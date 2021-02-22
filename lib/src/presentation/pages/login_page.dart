import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _loginAction(context) {
    BlocProvider.of<LoginBloc>(context).add(
      LoginAttempted(
        username: _usernameController.text,
        password: _passwordController.text,
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var authRepo = di<AuthRepository>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (authRepo.logged) {
            Navigator.of(context).pushReplacementNamed(QUOTA_ROUTE_NAME);
          }
          if (state is LoginAttemptInitial) {
            if (state.error != null) {
              _showCenterFlash(
                error: state.error,
                position: FlashPosition.top,
                style: FlashStyle.floating,
              );
            }
          }
        },
        builder: (context, state) {
          if (state is LoginAttemptInitial) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/splash.png",
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: GestionUhDefaultTextField(
                              labelText: '\t\tUsuario',
                              controller: _usernameController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestionUhDefaultTextField(
                      labelText: '\t\tContraseña',
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(5),
                        bottomLeft: const Radius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestionUhDefaultButton(
                      text: 'Iniciar Sesión',
                      onPressed: () => _loginAction(context),
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestionUhLoadingIndicator(),
              ],
            ),
          );
        },
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
