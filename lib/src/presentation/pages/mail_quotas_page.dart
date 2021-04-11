import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs.dart';
import '../widgets.dart';
import '../widgets/bottom_sheet.dart';

class MailQuotaPage extends StatefulWidget {
  MailQuotaPage({Key? key}) : super(key: key);

  @override
  _MailQuotaPageState createState() => _MailQuotaPageState();
}

class _MailQuotaPageState extends State<MailQuotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Correo'),
      ),
      bottomSheet: GestionUHBottomSheet(),
      drawer: DefaultDrawer(),
      body: BlocConsumer<MailQuotaBloc, MailQuotaState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is MailQuotaLoadedSuccess) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<MailQuotaBloc>().add(MailQuotaInitialized());
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
                          child: MailQuotaGraph(
                            quota: state.quota!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          if (state is MailQuotaLoadedFailure) {
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
                            context.read<MailQuotaBloc>().add(
                                  MailQuotaInitialized(),
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
