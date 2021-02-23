import 'dart:developer';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/validators.dart';
import '../blocs/reset_password_bloc/resetpassword_bloc.dart';
import '../widgets.dart';
import '../widgets/bottom_sheet.dart';

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
  void dispose() {
    _passwordFirstController.dispose();
    _passwordSecondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cambiar Contraseña'),
        ),
        bottomSheet: GestionUHBottomSheet(),
        body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
            if (state is ResetPasswordInitial && state.error != null) {
              _showCenterFlash(
                message: state.error,
                borderColor: Colors.red,
              );
            }
            if (state is ResetPasswordSuccess) {
              _showCenterFlash(
                message: 'Operación Completada.',
                borderColor: Colors.green,
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
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
                      onPressed: state is ResetPasswordInProgress
                          ? null
                          : () => _resetPassword(context),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  void _resetPassword(BuildContext context) {
    if (_formPasswordKey.currentState.validate()) {
      String passwordFirst = _passwordFirstController.text;
      String passwordSecond = _passwordSecondController.text;
      log("Password 1 $passwordFirst");
      log("Password 2 $passwordSecond");
      context.read<ResetPasswordBloc>().add(
            ResetPasswordAttempted(
                passwordFirst: passwordFirst, passwordSecond: passwordSecond),
          );
    }
  }

  void _showCenterFlash({
    String message,
    FlashPosition position = FlashPosition.top,
    FlashStyle style = FlashStyle.floating,
    Alignment alignment,
    Color borderColor,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: 5),
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
              style: TextStyle(color: Colors.white),
              child: Text(
                message,
              ),
            ),
          ),
        );
      },
    );
  }
}
