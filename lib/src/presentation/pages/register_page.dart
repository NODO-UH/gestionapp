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
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<Pair<String, int>> questions;
  List<int> questionsTaken;

  //
  List<TextEditingController> answersTextControllers;
  TextEditingController ciController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

  bool isReadyForRegistering() {
    return questionsTaken.where((element) => element != -1).length ==
        NUMBER_OF_SECURITY_QUESTIONS_NEEDED;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle headlineTextsTheme = Theme.of(context)
        .textTheme
        .headline6
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 16);

    final TextStyle dataTextsTheme = Theme.of(context)
        .textTheme
        .headline6
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 14);
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar'),
      ),
      bottomSheet: GestionUHBottomSheet(),
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) async {
          if (state is RegisterUserFailure && state.error != null) {
            _showCenterFlash(
              error: state.error,
              position: FlashPosition.top,
              style: FlashStyle.floating,
            );
          } else if (state is LoadInitialDataFailure) {
            Future.delayed(
              Duration(seconds: 2),
              () => context
                  .read<RegisterBloc>()
                  .add(QuestionsRequestedRegister()),
            );
          }
        },
        builder: (context, state) {
          if (state is LoadInitialDataSuccess && questions.length == 0) {
            int i = 0;
            questions = state.questions
                .map((e) => Pair(first: e, second: i++))
                .toList();
            questionsTaken = List<int>.filled(questions.length, -1);
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Todos los campos son obligatorios.*',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 14, color: Colors.black45),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
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
                          controller: ciController,
                          keyboardType: TextInputType.number,
                          hintText: '###########',
                          validator: identityNumberCIValidator,
                        ),
                      ]),
                  SizedBox(
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
                          controller: passwordController,
                          validator: safetyPasswordValidator,
                          keyboardType: TextInputType.visiblePassword,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(5),
                            bottomLeft: const Radius.circular(5),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Introduzca respuesta para las preguntas de seguridad de su preferencia',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 14, color: Colors.black45),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: () {
                      var childrenQuest = <Widget>[];
                      for (int i = 0;
                          i < NUMBER_OF_SECURITY_QUESTIONS_NEEDED;
                          i++) {
                        childrenQuest.add(buildQuestionZone(i));
                      }
                      return childrenQuest;
                    }(),
                  ),
                  SizedBox(height: 10),
                  GestionUhDefaultButton(
                    text: 'Registrar',
                    onPressed: () => null,
                  ),
                  SizedBox(height: 30),
                ],
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
        .headline6
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 16);

    final TextStyle dataTextsTheme = Theme.of(context)
        .textTheme
        .headline6
        .copyWith(color: Theme.of(context).primaryColor, fontSize: 14);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButton(
            icon: Icon(Icons.add_box_outlined),
            isDense: true,
            isExpanded: true,
            hint: Text(
              'Seleccione una pregunta',
              style: headlineTextsTheme,
              overflow: TextOverflow.fade,
            ),
            items: questions
                .map((option) => DropdownMenuItem<Pair<String, int>>(
                      child: Text(
                        option.first,
                        maxLines: 3,
                        style: headlineTextsTheme,
                      ),
                      value: option,
                    ))
                .toList(),
            value: questionsTaken.indexOf(index) != -1
                ? questions[questionsTaken.indexOf(index)]
                : null,
            onChanged: (Pair<String, int> value) {
              setState(() {
                if (questionsTaken.indexOf(index) != -1) {
                  // clean text boxs
                  var oldIndex = questionsTaken.indexOf(index);
                  questionsTaken[oldIndex] = -1;
                  answersTextControllers[oldIndex].clear();
                }
                questionsTaken[value.second] = index;
                answersTextControllers[index].clear();
              });
            },
          ),
          questionsTaken.indexOf(index) != -1
              ? GestionUhDefaultTextField(
                  hintText: 'Respuesta No.${index + 1}',
                  controller: answersTextControllers[index],
                )
              : Container(),
        ],
      ),
    );
  }

  void _showCenterFlash({
    String error,
    FlashPosition position,
    FlashStyle style,
    Alignment alignment,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: 5),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Colors.black87,
          borderRadius: BorderRadius.circular(8.0),
          borderColor: Colors.blue,
          position: position,
          style: style,
          alignment: alignment,
          enableDrag: false,
          onTap: () => controller.dismiss(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Text(
                error,
              ),
            ),
          ),
        );
      },
    );
  }
}
