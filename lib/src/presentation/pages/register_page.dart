import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';
import 'package:gestionuh/src/utils/pair.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late List<Pair<String, int>> questions;
  late List<int> questionsTaken;
  late bool termsAccepted;

  late List<TextEditingController> answersTextControllers;
  final TextEditingController ciController = TextEditingController();
  final TextEditingController passwordFirstController = TextEditingController();
  final TextEditingController passwordSecondController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (final element in answersTextControllers) {
      element.dispose();
    }
    ciController.dispose();
    passwordFirstController.dispose();
    passwordSecondController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    termsAccepted = false;
    questions = [];
    questionsTaken = [];
    answersTextControllers = List<TextEditingController>.generate(
      NUMBER_OF_SECURITY_QUESTIONS_NEEDED,
      (_) => TextEditingController(),
    );
  }

  Pair<String, int>? getFirstQuestionNotOccupeid(int index) {
    if (questions.isEmpty) return null;
    final qFree = questions.firstWhereOrNull(
      (e) => questionsTaken[e.second] == -1,
    );
    if (qFree == null) return null;
    questionsTaken[qFree.second] = index;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      answersTextControllers[index].clear();
    });
    return qFree;
  }

  Future<void> _showTermsAndConditionsDialog() async {
    final accepted = await FlashHelper.aceptDeclineDialog(
      context,
    );
    setState(() {
      termsAccepted = accepted ?? false;
    });
  }

  void _onRegisterAction() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (!termsAccepted ||
        questionsTaken.where((element) => element != -1).length !=
            NUMBER_OF_SECURITY_QUESTIONS_NEEDED) return;
    final _questions =
        questions.map((e) => questionsTaken[e.second] >= 0 ? e : null).toList();
    _questions.removeWhere((element) => element == null);
    _questions.sort((e1, e2) =>
        questionsTaken[e1!.second].compareTo(questionsTaken[e2!.second]));
    context.read<RegisterBloc>().add(RegisterEvent.formSubmitted(
          ci: ciController.text,
          passwordFirst: passwordFirstController.text,
          passwordSecond: passwordSecondController.text,
          questions: _questions.map((e) => e!.first).toList(),
          answers: answersTextControllers.map((e) => e.text).toList(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SelectableText('Registrarse'),
        centerTitle: true,
      ),
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) async {
          state.maybeWhen(
            initialLoadFailure: (error) async {
              await FlashHelper.errorBar(context, message: error);
              Future.delayed(
                const Duration(seconds: 1),
                () => context
                    .read<RegisterBloc>()
                    .add(const RegisterEvent.questionsRequested()),
              );
            },
            registrationFailure: (error) {
              FlashHelper.errorBar(context, message: error);
            },
            registrationSuccess: (_) {
              FlashHelper.successBar(
                context,
                message: 'El usuario fue registrado correctamente.',
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initialLoadSuccess: (List<String> loadedQuestions) =>
                _buildRegisterFormPageAndLoadQuestion(context, loadedQuestions),
            registrationSuccess: (String userEmail) =>
                _buildRegisterSuccessPage(context, userEmail),
            orElse: () => _buildRegisterFormPage(context),
          );
        },
      ),
    );
  }

  Widget _buildRegisterFormPageAndLoadQuestion(
    BuildContext context,
    List<String> loadedQuestions,
  ) {
    if (questions.isEmpty) {
      int i = 0;
      questions =
          loadedQuestions.map((e) => Pair(first: e, second: i++)).toList();
      questionsTaken = List<int>.filled(questions.length, -1);
    }
    return _buildRegisterFormPage(context);
  }

  Widget _buildRegisterFormPage(BuildContext context) {
    final TextStyle headlineTextsTheme = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 16);
    return Scrollbar(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            width: getValueForScreenType<double>(
              context: context,
              mobile: MediaQuery.of(context).size.width,
              tablet: MediaQuery.of(context).size.width * 0.5,
            ),
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 9,
              left: 18,
              right: 18,
            ),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: AutofillGroup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestionUhDefaultTextField(
                      labelText: 'Número de Carnet De Identidad',
                      labelStyle: headlineTextsTheme,
                      hintText: '###########',
                      autovalidateMode: AutovalidateMode.disabled,
                      controller: ciController,
                      validator: identityNumberCIValidator,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestionUhDefaultTextField(
                      labelText: 'Contraseña',
                      labelStyle: headlineTextsTheme,
                      hintText: '********',
                      autovalidateMode: AutovalidateMode.disabled,
                      controller: passwordFirstController,
                      validator: safetyPasswordValidator,
                      keyboardType: TextInputType.visiblePassword,
                      autofillHints: const [AutofillHints.newPassword],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestionUhDefaultTextField(
                      labelText: 'Repetir Contraseña',
                      labelStyle: headlineTextsTheme,
                      hintText: '********',
                      autovalidateMode: AutovalidateMode.disabled,
                      controller: passwordSecondController,
                      validator: safetyPasswordValidator,
                      keyboardType: TextInputType.visiblePassword,
                      autofillHints: const [AutofillHints.newPassword],
                    ),
                    const SizedBox(height: 60),
                    const Divider(
                      color: Colors.black54,
                    ),
                    const SizedBox(height: 10),
                    SelectableText(
                      'PREGUNTAS DE SEGURIDAD',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        final childrenQuest = <Widget>[];
                        const length = NUMBER_OF_SECURITY_QUESTIONS_NEEDED;
                        for (int i = 0; i < length; i++) {
                          final pairValue = questionsTaken.contains(i)
                              ? questions[questionsTaken.indexOf(i)]
                              : getFirstQuestionNotOccupeid(i);
                          childrenQuest.add(_buildQuestionZone(i, pairValue));
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: childrenQuest,
                        );
                      },
                    ),
                    CheckboxListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      dense: true,
                      activeColor: Theme.of(context).primaryColor,
                      value: termsAccepted,
                      title: Text(
                        'ACEPTO LOS TÉRMINOS Y CONDICIONES',
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                      onChanged: (value) => _showTermsAndConditionsDialog(),
                    ),
                    const SizedBox(height: 15),
                    GestionUhDefaultButton(
                      text: 'Finalizar',
                      onPressed: termsAccepted ? _onRegisterAction : null,
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterSuccessPage(BuildContext context, String userEmail) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText.rich(
            TextSpan(
              style: Theme.of(context).textTheme.subtitle1,
              children: [
                const TextSpan(
                  text: 'Se ha registrado correctamente '
                      'su correo es ',
                ),
                TextSpan(
                  text: '"$userEmail"',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.red),
                ),
                const TextSpan(
                  text: ', anótelo de ser necesario '
                      'no se mostrará otra vez.',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          GestionUhDefaultButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: userEmail));
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

  Widget _buildQuestionZone(int index, Pair<String, int>? valueSelected) {
    final TextStyle headlineTextsTheme = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 16);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButton(
            underline: Container(),
            icon: const Icon(Icons.arrow_drop_down),
            isExpanded: true,
            hint: Text(
              'Seleccione una pregunta',
              style: headlineTextsTheme,
              overflow: TextOverflow.fade,
            ),
            items: questions
                .map((option) => DropdownMenuItem<Pair<String, int>>(
                      value: option,
                      child: Text(
                        option.first,
                        maxLines: 3,
                        style: headlineTextsTheme,
                      ),
                    ))
                .toList(),
            value: valueSelected,
            onChanged: (Pair<String, int>? value) {
              setState(() {
                if (questionsTaken.contains(index)) {
                  // clean text boxs
                  final oldIndex = questionsTaken.indexOf(index);
                  questionsTaken[oldIndex] = -1;
                }
                questionsTaken[value!.second] = index;
                answersTextControllers[index].clear();
              });
            },
          ),
          if (questionsTaken.contains(index))
            GestionUhDefaultTextField(
              hintText: 'Respuesta No.${index + 1}',
              validator: answerValidator,
              autovalidateMode: AutovalidateMode.disabled,
              controller: answersTextControllers[index],
            )
          else
            Container(),
        ],
      ),
    );
  }
}
