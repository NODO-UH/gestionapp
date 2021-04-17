import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/utils/constants.dart';
import 'package:gestionuh/src/utils/pair.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';
import 'package:gestionuh/src/presentation/widgets/bottom_sheet.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';

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
  TextEditingController ciController = TextEditingController();
  TextEditingController passwordFirstController = TextEditingController();
  TextEditingController passwordSecondController = TextEditingController();
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
    answersTextControllers[index].clear();
    return qFree;
  }

  void _showTermsAndConditionsDialog() async {
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
    context.read<RegisterBloc>().add(
          FormsEnteredRegister(
            ci: ciController.text,
            passwordFirst: passwordFirstController.text,
            passwordSecond: passwordSecondController.text,
            questions: _questions.map((e) => e!.first).toList(),
            answers: answersTextControllers.map((e) => e.text).toList(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle headlineTextsTheme = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 16);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrarse'),
        centerTitle: true,
      ),
      bottomSheet: const GestionUHBottomSheet(),
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) async {
          if (state is RegisterUserFailure) {
            FlashHelper.errorBar(context, message: state.error);
          } else if (state is LoadInitialDataFailure) {
            Future.delayed(
              const Duration(seconds: 2),
              () => context
                  .read<RegisterBloc>()
                  .add(QuestionsRequestedRegister()),
            );
          } else if (state is RegisterUserSuccess) {
            FlashHelper.infoBar(context,
                message: 'El usuario fue registrado correctamente.');
          }
        },
        builder: (context, state) {
          if (state is LoadInitialDataSuccess && questions.isEmpty) {
            int i = 0;
            questions = state.questions
                .map((e) => Pair(first: e, second: i++))
                .toList();
            questionsTaken = List<int>.filled(questions.length, -1);
          }
          if (state is RegisterUserFailure ||
              state is LoadInitialDataSuccess ||
              state is LoadInitialDataInProgress ||
              state is LoadInitialDataFailure) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 9, left: 18, right: 18),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Todos los campos son obligatorios.*',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 14, color: Colors.black45),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Número de Carnet De Identidad',
                              style: headlineTextsTheme,
                            ),
                            GestionUhDefaultTextField(
                              hintText: '###########',
                              autovalidateMode: AutovalidateMode.disabled,
                              controller: ciController,
                              validator: identityNumberCIValidator,
                              keyboardType: TextInputType.number,
                            ),
                          ]),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contraseña',
                              style: headlineTextsTheme,
                            ),
                            GestionUhDefaultTextField(
                              hintText: '********',
                              autovalidateMode: AutovalidateMode.disabled,
                              controller: passwordFirstController,
                              validator: safetyPasswordValidator,
                              keyboardType: TextInputType.visiblePassword,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Repetir Contraseña',
                              style: headlineTextsTheme,
                            ),
                            GestionUhDefaultTextField(
                              hintText: '********',
                              autovalidateMode: AutovalidateMode.disabled,
                              controller: passwordSecondController,
                              validator: safetyPasswordValidator,
                              keyboardType: TextInputType.visiblePassword,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Introduzca respuesta para las preguntas de seguridad de su preferencia.',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 14, color: Colors.black45),
                        textAlign: TextAlign.center,
                      ),
                      Builder(
                        builder: (BuildContext context) {
                          final childrenQuest = <Widget>[];
                          const length = NUMBER_OF_SECURITY_QUESTIONS_NEEDED;
                          for (int i = 0; i < length; i++) {
                            childrenQuest.add(buildQuestionZone(i));
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: childrenQuest,
                          );
                        },
                      ),
                      TextButton(
                        onPressed: _showTermsAndConditionsDialog,
                        child: Row(
                          children: [
                            Checkbox(
                              value: termsAccepted,
                              activeColor: Theme.of(context).primaryColor,
                              // ignore: avoid_returning_null_for_void
                              onChanged: (value) =>
                                  _showTermsAndConditionsDialog(),
                            ),
                            Text(
                              'TÉRMINOS Y CONDICIONES DE USO',
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestionUhDefaultButton(
                        text: 'Finalizar',
                        onPressed: termsAccepted ? _onRegisterAction : null,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            );
          } else if (state is RegisterUserSuccess) {
            return Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          const TextSpan(
                            text: 'Se ha registrado correctamente '
                                'su correo es ',
                          ),
                          TextSpan(
                            text: '"${state.userEmail}"',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.red),
                          ),
                          const TextSpan(
                            text: ', anótelo de ser necesario '
                                'no se mostrará otra vez',
                          ),
                        ]),
                  ),
                  const SizedBox(height: 30),
                  GestionUhDefaultButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildQuestionZone(int index) {
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
            icon: const Icon(Icons.add_box_outlined),
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
            value: questionsTaken.contains(index)
                ? questions[questionsTaken.indexOf(index)]
                : getFirstQuestionNotOccupeid(index),
            onChanged: (Pair<String, int>? value) {
              setState(() {
                if (questionsTaken.contains(index)) {
                  // clean text boxs
                  final oldIndex = questionsTaken.indexOf(index);
                  questionsTaken[oldIndex] = -1;
                  answersTextControllers[oldIndex].clear();
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
              controller: answersTextControllers[index],
            )
          else
            Container(),
        ],
      ),
    );
  }
}
