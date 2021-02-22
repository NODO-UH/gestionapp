import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';

class QuotaPage extends StatefulWidget {
  QuotaPage({Key key}) : super(key: key);

  @override
  _QuotaPageState createState() => _QuotaPageState();
}

class _QuotaPageState extends State<QuotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuota'),
      ),
      drawer: DefaultDrawer(),
      body: BlocConsumer<QuotaBloc, QuotaState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is QuotaLoadedSuccess) {
            return RefreshIndicator(
              onRefresh: () async {
                context.bloc<QuotaBloc>().add(QuotaInitialized());
              },
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 30, bottom: 9, left: 18, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: QuotaGraph(
                            quota: state.quota,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          if (state is QuotaLoadedFailure) {
            return ListView(
              children: [
                Padding(
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
                            context.bloc<QuotaBloc>().add(
                                  QuotaInitialized(),
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
