import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/reset_password_bloc/resetpassword_bloc.dart';
import 'package:gestionuh/src/presentation/widgets.dart';
import 'package:gestionuh/src/presentation/widgets/bottom_sheet.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _passwordFirstController = TextEditingController();
  final _passwordSecondController = TextEditingController();
  final _formPasswordKey = GlobalKey<FormState>();

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
          title: const Text('Cambiar Contraseña'),
          centerTitle: true,
        ),
        drawer: DefaultDrawer(),
        bottomSheet: const GestionUHBottomSheet(),
        body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
            if (state is ResetPasswordInitial) {
              FlashHelper.errorBar(context, message: state.error);
            }
            if (state is ResetPasswordSuccess) {
              FlashHelper.infoBar(context,
                  message: 'La contraseña ha sido actualizada correctamente.');
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Center(
                child: Container(
                  width: getValueForScreenType<double>(
                    context: context,
                    mobile: MediaQuery.of(context).size.width,
                    tablet: MediaQuery.of(context).size.width * 0.5,
                  ),
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 9, left: 18, right: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Hints Area
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 16.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(height: 1.4),
                              children: [
                                TextSpan(
                                  text: 'Su nueva contraseña debe tener:\n',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const TextSpan(
                                  text: '(1) Más de 8 caracteres.\n',
                                ),
                                const TextSpan(
                                  text: '(2) Al menos una minúscula.\n',
                                ),
                                const TextSpan(
                                  text: '(3) Al menos una mayúscula.\n',
                                ),
                                const TextSpan(
                                  text:
                                      '(4) Al menos un caracter especial, Ej. !\$@+.\n',
                                ),
                                const TextSpan(
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
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: GestionUhDefaultTextField(
                                labelText: 'Contraseña*',
                                controller: _passwordFirstController,
                                validator: safetyPasswordValidator,
                                autovalidateMode: AutovalidateMode.disabled,
                                keyboardType: TextInputType.visiblePassword,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: GestionUhDefaultTextField(
                                labelText: 'Repetir Contraseña*',
                                controller: _passwordSecondController,
                                validator: safetyPasswordValidator,
                                autovalidateMode: AutovalidateMode.disabled,
                                keyboardType: TextInputType.visiblePassword,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
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
              ),
            );
          },
        ));
  }

  void _resetPassword(BuildContext context) {
    if (_formPasswordKey.currentState!.validate()) {
      final String passwordFirst = _passwordFirstController.text;
      final String passwordSecond = _passwordSecondController.text;
      log('Password 1 $passwordFirst');
      log('Password 2 $passwordSecond');
      context.read<ResetPasswordBloc>().add(
            ResetPasswordAttempted(
                passwordFirst: passwordFirst, passwordSecond: passwordSecond),
          );
    }
  }
}
