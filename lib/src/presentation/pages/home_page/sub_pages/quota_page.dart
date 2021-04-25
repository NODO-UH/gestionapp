import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class QuotaPage extends StatefulWidget {
  const QuotaPage({Key? key}) : super(key: key);

  @override
  _QuotaPageState createState() => _QuotaPageState();
}

class _QuotaPageState extends State<QuotaPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuotaBloc, QuotaState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is QuotaLoadedSuccess) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<QuotaBloc>().add(QuotaInitialized());
            },
            child: Scrollbar(
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  Center(
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
                  ),
                ],
              ),
            ),
          );
        }
        if (state is QuotaLoadedFailure) {
          return Scrollbar(
            child: ListView(
              children: [
                Center(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SelectableText(state.error),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestionUhDefaultButton(
                            text: 'Reintentar',
                            onPressed: () {
                              context.read<QuotaBloc>().add(
                                    QuotaInitialized(),
                                  );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
    );
  }
}
