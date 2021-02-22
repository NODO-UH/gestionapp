import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/validators.dart';
import '../blocs/reset_password_bloc/resetpassword_bloc.dart';
import '../widgets.dart';
import '../widgets/loading_indicators/circular_loading.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController _passwordFirstController = TextEditingController();
  TextEditingController _passwordSecondController = TextEditingController();
  GlobalKey<FormState> _formPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cambiar Contraseña'),
        ),
        body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
          // TODO: implement listener
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Hints Area
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 16.0),
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(height: 1.4),
                          children: [
                            TextSpan(
                              text: 'Su nueva contraseña debe tener:\n',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            TextSpan(
                              text: '(1) Más de 8 caracteres.\n',
                            ),
                            TextSpan(
                              text: '(2) Al menos una minúscula.\n',
                            ),
                            TextSpan(
                              text: '(3) Al menos una mayúscula.\n',
                            ),
                            TextSpan(
                              text:
                                  '(4) Al menos un caracter especial, Ej. !\$@+.\n',
                            ),
                            TextSpan(
                              text: '(5) Al menos un número.\n',
                            ),
                          ]),
                    ),
                  ),

                  // Password inputs
                  Form(
                    key: _formPasswordKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestionUhDefaultTextField(
                            labelText: '\t\tContraseña*',
                            controller: _passwordFirstController,
                            validator: safetyPasswordValidator,
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.visiblePassword,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestionUhDefaultTextField(
                            labelText: '\t\tRepetir Contraseña*',
                            controller: _passwordSecondController,
                            validator: safetyPasswordValidator,
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.visiblePassword,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(5),
                              bottomLeft: const Radius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestionUhDefaultButton(
                    text: 'Actualizar Contraseña',
                    // onPressed: state is loading?() => _resetPassword(context),
                  ),
                ],
              ),
            ),
          );
        }));
  }

  void _resetPassword(BuildContext context) {
    if (_formPasswordKey.currentState.validate()) {
      String firstPassword = _passwordFirstController.text;
      String secondPassword = _passwordSecondController.text;
      log("Password 1 $firstPassword");
      log("Password 2 $secondPassword");
      // context.bloc<LoginCubit>().login(_loginData.loginData);
    }
  }
}
