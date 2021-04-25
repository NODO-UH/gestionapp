import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          loading: () {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  GestionUhLoadingIndicator(),
                ],
              ),
            );
          },
          success: (profile) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<ProfileBloc>().add(const ProfileEvent.load());
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
                            if ((profile.name ?? '').isNotEmpty)
                              buildProfileField(
                                title: 'Nombre',
                                body: profile.name ?? '',
                              ),
                            if ((profile.email ?? '').isNotEmpty)
                              buildProfileField(
                                title: 'Correo',
                                body: profile.email ?? '',
                              ),
                            if ((profile.careerName ?? '').isNotEmpty)
                              buildProfileField(
                                title: 'Carrera',
                                body: profile.careerName ?? '',
                              ),
                            if ((profile.position ?? '').isNotEmpty)
                              buildProfileField(
                                title: 'Ocupación',
                                body: profile.position ?? '',
                              ),
                            if ((profile.objectClass ?? '').isNotEmpty)
                              buildProfileField(
                                title: 'Clase',
                                body: profile.objectClass ?? '',
                              ),
                            buildAccessFields(
                              mail: profile.hasEmail ?? false,
                              cloud: profile.hasCloud ?? false,
                              internet: profile.hasInternet ?? false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error) {
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
                                context
                                    .read<ProfileBloc>()
                                    .add(const ProfileEvent.load());
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
          },
        );
      },
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
          SelectableText(title),
          const SizedBox(
            height: 3,
          ),
          SelectableText(
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
            text: 'Acceso a Mi Nube',
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
          child: SelectableText(
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
