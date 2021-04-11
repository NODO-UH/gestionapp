import 'package:collection/collection.dart' show IterableExtension;
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/constants.dart';
import '../../utils/pair.dart';
import '../../utils/validators.dart';
import '../blocs.dart';
import '../widgets.dart';
import '../widgets/bottom_sheet.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late List<Pair<String, int>> questions;
  late List<int> questionsTaken;

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
    questions = [];
    questionsTaken = [];
    answersTextControllers = List<TextEditingController>.generate(
      NUMBER_OF_SECURITY_QUESTIONS_NEEDED,
      (_) => TextEditingController(),
    );
  }

  void _onRegisterAction() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (questionsTaken.where((element) => element != -1).length !=
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
        title: const Text('Registrar'),
        centerTitle: true,
      ),
      bottomSheet: const GestionUHBottomSheet(),
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) async {
          if (state is RegisterUserFailure) {
            _showCenterFlash(
              message: state.error,
              borderColor: Colors.red,
            );
          } else if (state is LoadInitialDataFailure) {
            Future.delayed(
              const Duration(seconds: 2),
              () => context
                  .read<RegisterBloc>()
                  .add(QuestionsRequestedRegister()),
            );
          } else if (state is RegisterUserSuccess) {
            _showCenterFlash(
              message:
                  'Operación Completada. Su correo electrónico es ${state.userEmail}.',
              borderColor: Colors.green,
            );
            Future.delayed(
                const Duration(seconds: 4),
                () => Navigator.of(context)
                  ..popUntil((_) => Navigator.of(context).canPop())
                  ..pushNamed(LOGIN_ROUTE_NAME));
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: () {
                        final childrenQuest = <Widget>[];
                        for (int i = 0;
                            i < NUMBER_OF_SECURITY_QUESTIONS_NEEDED;
                            i++) {
                          childrenQuest.add(buildQuestionZone(i));
                        }
                        return childrenQuest;
                      }(),
                    ),
                    const SizedBox(height: 10),
                    GestionUhDefaultButton(
                      text: 'Registrar',
                      onPressed: _onRegisterAction,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          );
          // return Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       GestionUhLoadingIndicator(),
          //     ],
          //   ),
          // );
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
            icon: const Icon(Icons.add_box_outlined),
            isDense: true,
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

  void _showCenterFlash({
    required String message,
    FlashPosition position = FlashPosition.top,
    FlashStyle style = FlashStyle.floating,
    Alignment? alignment,
    Color? borderColor,
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 5),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Colors.black87,
          borderRadius: BorderRadius.circular(8.0),
          borderColor: borderColor ?? Colors.black,
          position: position,
          style: style,
          alignment: alignment,
          enableDrag: false,
          onTap: () => controller.dismiss(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.white),
              child: Text(
                message,
              ),
            ),
          ),
        );
      },
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
}
