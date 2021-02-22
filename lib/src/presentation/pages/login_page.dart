import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {},
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
}
