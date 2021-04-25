import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/reset_password_bloc/resetpassword_bloc.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _passwordCurrentController = TextEditingController();
  final _passwordFirstController = TextEditingController();
  final _passwordSecondController = TextEditingController();
  final _formPasswordKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordCurrentController.dispose();
    _passwordFirstController.dispose();
    _passwordSecondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            FlashHelper.successBar(
              context,
              message: 'La contraseña ha sido actualizada correctamente.',
            );
          },
          failure: (error) => FlashHelper.errorBar(
            context,
            message: error,
          ),
          orElse: () {},
        );
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
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                            ...const <String>[
                              '(1) Más de 8 caracteres.',
                              '(2) Al menos una minúscula.',
                              '(3) Al menos una mayúscula.',
                              '(4) Al menos un caracter especial, Ej. !\$@+.',
                              '(5) Al menos un número.',
                            ].map((e) => TextSpan(text: '$e\n')),
                          ]),
                    ),
                  ),

                  // Password inputs
                  Form(
                    key: _formPasswordKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Current password input
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestionUhDefaultTextField(
                            labelText: 'Contraseña Actual',
                            hintText: '********',
                            controller: _passwordCurrentController,
                            validator: currentPasswordValidator,
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        const SizedBox(
                            height: 30,
                            child: Divider(
                              color: Colors.black54,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestionUhDefaultTextField(
                            labelText: 'Contraseña Nueva*',
                            hintText: '********',
                            controller: _passwordFirstController,
                            validator: safetyPasswordValidator,
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestionUhDefaultTextField(
                            labelText: 'Repetir Contraseña*',
                            hintText: '********',
                            controller: _passwordSecondController,
                            validator: safetyPasswordValidator,
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestionUhDefaultButton(
                    text: 'Actualizar Contraseña',
                    onPressed: state.maybeWhen(
                      inProgress: () => null,
                      orElse: () {
                        return () => _resetPassword(context);
                      },
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _resetPassword(BuildContext context) {
    if (_formPasswordKey.currentState!.validate()) {
      final String currentPassword = _passwordCurrentController.text;
      final String passwordFirst = _passwordFirstController.text;
      final String passwordSecond = _passwordSecondController.text;
      context.read<ResetPasswordBloc>().add(
            ResetPasswordEvent.resetPasswordAttempted(
              currentPassword: currentPassword,
              passwordFirst: passwordFirst,
              passwordSecond: passwordSecond,
            ),
          );
    }
  }
}
