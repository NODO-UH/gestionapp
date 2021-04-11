import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs.dart';
import '../widgets.dart';
import '../widgets/bottom_sheet.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      bottomSheet: const GestionUHBottomSheet(),
      drawer: DefaultDrawer(),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ProfileLoadedSuccess) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<ProfileBloc>().add(ProfileInitialized());
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 9, left: 18, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.profile.name!),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          if (state is ProfileLoadedFailure) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 9, left: 18, right: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.error),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: GestionUhDefaultButton(
                          text: 'Reintentar',
                          onPressed: () {
                            context.read<ProfileBloc>().add(
                                  ProfileInitialized(),
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
