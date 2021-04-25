import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/models/mail_quota.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MailQuotaPage extends StatefulWidget {
  const MailQuotaPage({Key? key}) : super(key: key);

  @override
  _MailQuotaPageState createState() => _MailQuotaPageState();
}

class _MailQuotaPageState extends State<MailQuotaPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MailQuotaBloc, MailQuotaState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loadFailure: (String error) => _buildFailurePage(context, error),
          loadSuccess: (MailQuota quota) => _buildQuotaPage(context, quota),
          orElse: () => _buildLoadingIndicator(context),
        );
      },
    );
  }

  Widget _buildQuotaPage(BuildContext context, MailQuota quota) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<MailQuotaBloc>()
            .add(const MailQuotaEvent.quotaRequested());
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
                      child: MailQuotaGraph(
                        quota: quota,
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

  Widget _buildFailurePage(BuildContext context, String error) {
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
                  SelectableText(error),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestionUhDefaultButton(
                      text: 'Reintentar',
                      onPressed: () {
                        context.read<MailQuotaBloc>().add(
                              const MailQuotaEvent.quotaRequested(),
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
