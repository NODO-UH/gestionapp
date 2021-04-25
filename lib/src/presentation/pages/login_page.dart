import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/bottom_sheet.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';
import 'package:gestionuh/src/utils/validators.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;
  final _formLoginKey = GlobalKey<FormState>();

  void _loginAction(BuildContext context) {
    if (_formLoginKey.currentState?.validate() ?? false) {
      context.read<LoginBloc>().add(
            LoginEvent.loginAttempted(
              userName: _userNameController.text,
              password: _passwordController.text,
              rememberMe: _rememberMe,
            ),
          );
    }
  }

  void _recoverAction(BuildContext context) {
    Navigator.of(context).pushNamed(RECOVER_PASSWORD_ROUTE_NAME);
  }

  void _registerAction(BuildContext context) {
    Navigator.of(context).pushNamed(REGISTER_ROUTE_NAME);
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authRepo = GetIt.I<AuthRepository>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
        centerTitle: true,
      ),
      bottomSheet: const GestionUHBottomSheet(),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (authRepo.logged) {
            Navigator.of(context).pushReplacementNamed(HOME_ROUTE_NAME);
          }
          state.maybeWhen(
            failure: (error) => FlashHelper.errorBar(context, message: error),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            inProgress: () => _buildLoadingIndicator(context),
            orElse: () => _buildLoginForm(context),
          );
        },
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
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
              key: _formLoginKey,
              autovalidateMode: AutovalidateMode.disabled,
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 7,
                          child: GestionUhDefaultTextField(
                            labelText: 'Nombre de Usuario',
                            controller: _userNameController,
                            validator: userNameValidator,
                            autovalidateMode: AutovalidateMode.disabled,
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
                    autovalidateMode: AutovalidateMode.disabled,
                    validator: currentPasswordValidator,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (GetIt.I<ILocalStorage>().isSecureStorageAvailable)
                    GestureDetector(
                      onTap: () => setState(() => _rememberMe = !_rememberMe),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '¿Desea recordar la sesión?',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            Text(
                              'No',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Switch(
                              value: _rememberMe,
                              activeColor: Theme.of(context).primaryColor,
                              onChanged: (value) =>
                                  setState(() => _rememberMe = value),
                            ),
                            Text(
                              'Si',
                              style: Theme.of(context).textTheme.subtitle1,
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
      ),
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          GestionUhLoadingIndicator(),
        ],
      ),
    );
  }
}
