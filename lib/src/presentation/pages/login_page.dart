import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';
import 'package:gestionuh/src/presentation/widgets/bottom_sheet.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  void _loginAction(BuildContext context) {
    context.read<LoginBloc>().add(
          LoginAttempted(
            username: _usernameController.text,
            password: _passwordController.text,
            rememberMe: _rememberMe,
          ),
        );
  }

  void _recoverAction(BuildContext context) {
    Navigator.of(context).pushNamed(RECOVER_PASSWORD_ROUTE_NAME);
  }

  void _registerAction(BuildContext context) {
    Navigator.of(context).pushNamed(REGISTER_ROUTE_NAME);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authRepo = di<AuthRepository>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
        centerTitle: true,
      ),
      bottomSheet: const GestionUHBottomSheet(),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (authRepo.logged) {
            Navigator.of(context).pushReplacementNamed(PROFILE_ROUTE_NAME);
          }
          if (state is LoginAttemptInitial) {
            FlashHelper.errorBar(context, message: state.error);
          }
        },
        builder: (context, state) {
          if (state is LoginAttemptInitial) {
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/splash.png',
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 7,
                                child: GestionUhDefaultTextField(
                                  labelText: 'Usuario',
                                  controller: _usernameController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestionUhDefaultTextField(
                          labelText: 'Contraseña',
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        if (di<ILocalStorage>().isSecureStorageAvailable)
                          GestureDetector(
                            onTap: () =>
                                setState(() => _rememberMe = !_rememberMe),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '¿Desea recordar la sesión?',
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                  Text(
                                    'No',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Switch(
                                    value: _rememberMe,
                                    activeColor: Theme.of(context).primaryColor,
                                    onChanged: (value) =>
                                        setState(() => _rememberMe = value),
                                  ),
                                  Text(
                                    'Si',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestionUhDefaultButton(
                          text: 'Iniciar Sesión',
                          onPressed: () => _loginAction(context),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestionUhDefaultButton(
                          text: 'Recuperar Contraseña',
                          onPressed: () => _recoverAction(context),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestionUhDefaultButton(
                          text: 'Registrarse',
                          onPressed: () => _registerAction(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                GestionUhLoadingIndicator(),
              ],
            ),
          );
        },
      ),
    );
  }
}
