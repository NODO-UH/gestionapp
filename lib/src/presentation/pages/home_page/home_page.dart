import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/enums/enums.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/pages/home_page/sub_pages/sub_pages.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: _buildListener,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.watch ||
              sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return Scaffold(
              appBar: _buildAppBar(),
              drawer: _buildDrawer(context),
              body: _buildBody(context),
            );
          } else {
            return Row(
              children: [
                _buildDrawer(context),
                const VerticalDivider(width: 1),
                Expanded(
                  child: Scaffold(
                    appBar: _buildAppBar(),
                    body: _buildBody(context),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  void _buildListener(BuildContext context, HomeState state) {
    state.maybeWhen(
      logout: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          LOGIN_ROUTE_NAME,
          (route) => false,
        );
      },
      orElse: () {},
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SelectableText(
            state.map(
              loading: (state) => 'Cargando',
              error: (state) => 'Error',
              logout: (state) => 'Cargando',
              profile: (state) => 'Perfil',
              quota: (state) => 'Mi Cuota',
              mailQuota: (state) => 'Correo',
              resetPassword: (state) => 'Cambiar Contraseña',
              aboutUs: (state) => 'Acerca de ${Constants.appName}',
            ),
          );
        },
      ),
      centerTitle: true,
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (_, state) {
                return ListView(
                  children: [
                    DrawerHeader(
                      child: Image.asset(
                        'assets/images/logo-uh.png',
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    ...state.when<List<Widget>>(
                      loading: () => [
                        ListTile(
                          leading: const GestionUhLoadingIndicator(),
                          title: Text(
                            'Cargando ...',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ],
                      error: (error) => [
                        ListTile(
                          leading: const Icon(Icons.error),
                          title: Text(
                            'Error',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ],
                      profile: (p, x) => _getDrawerItems(context, p, x),
                      quota: (p, x) => _getDrawerItems(context, p, x),
                      mailQuota: (p, x) => _getDrawerItems(context, p, x),
                      resetPassword: (p, x) => _getDrawerItems(context, p, x),
                      aboutUs: (p, x) => _getDrawerItems(context, p, x),
                      logout: () => [
                        ListTile(
                          leading: const GestionUhLoadingIndicator(),
                          title: Text(
                            'Cerrando Sesión ...',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: GestionUHBottomSheet(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          loading: (state) {
            return const Center(
              child: GestionUhLoadingIndicator(),
            );
          },
          error: (state) {
            return Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(state.message),
                    const SizedBox(height: 20),
                    GestionUhDefaultButton(
                      text: 'Reintentar',
                      onPressed: () {
                        context
                            .read<HomeBloc>()
                            .add(const HomeEvent.loadProfile());
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          logout: (state) {
            return const Center(
              child: GestionUhLoadingIndicator(),
            );
          },
          profile: (state) {
            return BlocProvider<ProfileBloc>(
              create: (_) => GetIt.I()..add(const ProfileEvent.load()),
              child: const ProfilePage(),
            );
          },
          quota: (state) {
            return BlocProvider<QuotaBloc>(
              create: (_) => GetIt.I()..add(const QuotaEvent.load()),
              child: const QuotaPage(),
            );
          },
          mailQuota: (state) {
            return BlocProvider<MailQuotaBloc>(
              create: (_) =>
                  GetIt.I()..add(const MailQuotaEvent.quotaRequested()),
              child: const MailQuotaPage(),
            );
          },
          resetPassword: (state) {
            return BlocProvider<ResetPasswordBloc>(
              create: (_) => GetIt.I(),
              child: const ResetPasswordPage(),
            );
          },
          aboutUs: (state) {
            return const AboutInformationPage();
          },
        );
      },
    );
  }

  List<Widget> _getDrawerItems(
    BuildContext context,
    UserData profile,
    List<HomeItemEnum> items,
  ) {
    return items.map((e) => _getDrawerItem(context, profile, e)).toList();
  }

  Widget _getDrawerItem(
    BuildContext context,
    UserData profile,
    HomeItemEnum item,
  ) {
    switch (item) {
      case HomeItemEnum.Separator:
        return const Divider();
      case HomeItemEnum.Profile:
        return _buildDrawerItem(
          context: context,
          text: 'Perfil',
          icon: Icons.person,
          onTap: () {
            _applyPopIfDrawerIsDialog(context);
            context.read<HomeBloc>().add(HomeEvent.goToProfile(profile));
          },
        );
      case HomeItemEnum.Quota:
        return _buildDrawerItem(
          context: context,
          text: 'Mi Cuota',
          icon: Icons.data_usage,
          onTap: () {
            _applyPopIfDrawerIsDialog(context);
            context.read<HomeBloc>().add(HomeEvent.goToQuota(profile));
          },
        );
      case HomeItemEnum.MailQuota:
        return _buildDrawerItem(
          context: context,
          text: 'Correo',
          icon: Icons.mail,
          onTap: () {
            _applyPopIfDrawerIsDialog(context);
            context.read<HomeBloc>().add(HomeEvent.goToMailQuota(profile));
          },
        );
      case HomeItemEnum.ResetPassword:
        return _buildDrawerItem(
          context: context,
          text: 'Cambiar Contraseña',
          icon: Icons.security_rounded,
          onTap: () {
            _applyPopIfDrawerIsDialog(context);
            context.read<HomeBloc>().add(HomeEvent.goToResetPassword(profile));
          },
        );
      case HomeItemEnum.Logout:
        return _buildDrawerItem(
          context: context,
          text: 'Cerrar Sesión',
          icon: Icons.logout,
          onTap: () async {
            _applyPopIfDrawerIsDialog(context);
            final option = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: const SelectableText(
                      '¿Está seguro que desea cerrar sesión?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text('Si'),
                    ),
                    TextButton(
                      onPressed: () async {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('No'),
                    ),
                  ],
                );
              },
            );
            if (option ?? false) {
              context.read<HomeBloc>().add(const HomeEvent.logout());
            }
          },
        );
      case HomeItemEnum.AboutUs:
        return _buildDrawerItem(
          context: context,
          text: 'Acerca de',
          icon: Icons.info_outline_rounded,
          onTap: () {
            _applyPopIfDrawerIsDialog(context);
            context.read<HomeBloc>().add(HomeEvent.goToAboutUs(profile));
          },
        );
    }
  }

  void _applyPopIfDrawerIsDialog(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    switch (deviceType) {
      case DeviceScreenType.mobile:
      case DeviceScreenType.watch:
        Navigator.of(context).pop();
        break;
      default:
        break;
    }
  }

  Widget _buildDrawerItem({
    required BuildContext context,
    required String text,
    IconData? icon,
    void Function()? onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      onTap: onTap,
    );
  }
}
