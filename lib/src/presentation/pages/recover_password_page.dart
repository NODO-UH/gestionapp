import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RecoverPasswordPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SelectableText('Recuperar Contraseña'),
        centerTitle: true,
      ),
      bottomSheet: const GestionUHBottomSheet(),
      body: Scrollbar(
        child: Center(
          child: SizedBox(
            width: getValueForScreenType<double>(
              context: context,
              mobile: MediaQuery.of(context).size.width,
              tablet: MediaQuery.of(context).size.width * 0.5,
            ),
            child: BlocConsumer<RecoverPasswordBloc, RecoverPasswordState>(
              listener: (context, state) {
                state.maybeMap(
                  ciError: (state) {
                    FlashHelper.errorBar(context, message: state.error);
                  },
                  questionsError: (state) {
                    FlashHelper.errorBar(context, message: state.error);
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.when(
                  initial: (ci) => _buildInitial(context, ci, false),
                  ciLoading: (ci) => _buildInitial(context, ci, true),
                  ciError: (ci, _) => _buildInitial(context, ci, false),
                  questions: (ci, questions, answers, password) {
                    return _buildQuestions(
                      context,
                      ci,
                      questions,
                      answers,
                      password,
                      false,
                    );
                  },
                  questionsLoading: (ci, questions, answers, password) {
                    return _buildQuestions(
                      context,
                      ci,
                      questions,
                      answers,
                      password,
                      true,
                    );
                  },
                  questionsError: (ci, questions, answers, password, _) {
                    return _buildQuestions(
                      context,
                      ci,
                      questions,
                      answers,
                      password,
                      false,
                    );
                  },
                  success: (userId) => _buildSuccess(context, userId),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInitial(
    BuildContext context,
    TextEditingController ci,
    bool loading,
  ) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: loading ? 1 : 0,
            child: const GestionUhLoadingIndicator(),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 9,
              left: 18,
              right: 18,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: GestionUhDefaultTextField(
                    labelText: 'Número de Carnet de Identidad*',
                    controller: ci,
                    validator: identityNumberCIValidator,
                    autovalidateMode: AutovalidateMode.disabled,
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestionUhDefaultButton(
                  text: 'Continuar',
                  onPressed: () {
                    if (loading || !_formKey.currentState!.validate()) {
                      return;
                    }
                    context
                        .read<RecoverPasswordBloc>()
                        .add(RecoverPasswordEvent.ciSubmit(ci));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQuestions(
    BuildContext context,
    String ci,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
    bool loading,
  ) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: AutofillGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: loading ? 1 : 0,
                child: const LinearProgressIndicator(),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 9,
                  left: 18,
                  right: 18,
                ),
                child: Column(
                  children: [
                    for (var i = 0; i < questions.length; ++i)
                      Column(
                        children: [
                          SelectableText(questions[i]),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: GestionUhDefaultTextField(
                              controller: answers[i],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'La respuesta es necesaria.';
                                }
                                return null;
                              },
                              autovalidateMode: AutovalidateMode.disabled,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestionUhDefaultTextField(
                        labelText: 'Contraseña*',
                        controller: password,
                        validator: safetyPasswordValidator,
                        autovalidateMode: AutovalidateMode.disabled,
                        keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [AutofillHints.newPassword],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: GestionUhDefaultTextField(
                        labelText: 'Repetir Contraseña*',
                        validator: (value) {
                          if (value != password.text) {
                            return 'Las contraseñas deben coincidir';
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.disabled,
                        keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [AutofillHints.newPassword],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestionUhDefaultButton(
                      text: 'Continuar',
                      onPressed: () {
                        if (loading || !_formKey.currentState!.validate()) {
                          return;
                        }
                        context
                            .read<RecoverPasswordBloc>()
                            .add(RecoverPasswordEvent.finalSubmit(
                              ci,
                              questions,
                              answers,
                              password,
                            ));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccess(BuildContext context, String userId) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            'Se ha cambiado correctamente la contraseña '
            'de la cuenta "$userId".',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 15),
          GestionUhDefaultButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: userId));
              FlashHelper.successBar(
                context,
                message: 'Correo copiado correctamente.',
              );
            },
            child: const Text('Copiar Correo'),
          ),
          const SizedBox(height: 30),
          GestionUhDefaultButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
