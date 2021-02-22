import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuenta'),
      ),
      drawer: ProfilePageDrawer(),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ProfileLoadedSuccess) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Consumed: ${state.quota?.consumed}'),
                    Text('Total: ${state.quota?.quota}'),
                    Text('Bonus: ${state.quota?.bonus}'),
                  ],
                ),
              ),
            );
          }
          if (state is ProfileLoadedFailure) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 30, bottom: 9, left: 18, right: 18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${state.error}'),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: GestionUhDefaultButton(
                        text: 'Reintentar',
                        onPressed: () {
                          context.bloc<ProfileBloc>().add(
                                ProfileInitialized(),
                              );
                        },
                      ),
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
