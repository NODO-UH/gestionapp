import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/widgets.dart';
import 'package:gestionuh/src/presentation/widgets/bottom_sheet.dart';

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
        centerTitle: true,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildProfileField(
                              title: 'Nombre',
                              body: state.profile.name ?? '',
                            ),
                            buildProfileField(
                              title: 'Correo',
                              body: state.profile.email ?? '',
                            ),
                            buildProfileField(
                              title: 'Carrera',
                              body: state.profile.careerName ?? '',
                            ),
                            buildProfileField(
                              title: 'Ocupación',
                              body: state.profile.position ?? '',
                            ),
                            buildProfileField(
                              title: 'Clase',
                              body: state.profile.objectClass ?? '',
                            ),
                            buildAccessFields(
                              mail: state.profile.hasEmail ?? false,
                              cloud: state.profile.hasCloud ?? false,
                              internet: state.profile.hasInternet ?? false,
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
          if (state is ProfileLoadedFailure) {
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
      ),
    );
  }

  Widget buildProfileField({
    required String title,
    required String body,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 3,
          ),
          Text(
            body,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAccessFields({
    required bool mail,
    required bool cloud,
    required bool internet,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          buildToogleFiled(
            icon: Icons.mail,
            text: 'Acceso a Correo',
            value: mail,
          ),
          const SizedBox(
            height: 5,
          ),
          buildToogleFiled(
            icon: Icons.cloud,
            text: 'Acceso a Nube',
            value: cloud,
          ),
          const SizedBox(
            height: 5,
          ),
          buildToogleFiled(
            icon: Icons.wifi,
            text: 'Acceso a Internet',
            value: internet,
          ),
        ],
      ),
    );
  }

  Widget buildToogleFiled({
    required IconData icon,
    required String text,
    required bool value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(
          icon,
          color: value ? Colors.green : Colors.red,
        ),
      ],
    );
  }
}
