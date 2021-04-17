import 'package:flutter/material.dart';
import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';

class DefaultDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    final authRepo = di<AuthRepository>();
    return Drawer(
      key: key ?? UniqueKey(),
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              'assets/images/logo-uh.png',
              color: Theme.of(context).primaryColor,
            ),
          ),
          _buildDrawerItem(
            context: context,
            text: 'Perfil',
            icon: Icons.person,
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushReplacementNamed(PROFILE_ROUTE_NAME);
            },
          ),
          _buildDrawerItem(
            context: context,
            text: 'Mi Cuota',
            icon: Icons.data_usage,
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushReplacementNamed(QUOTA_ROUTE_NAME);
            },
          ),
          _buildDrawerItem(
              context: context,
              text: 'Correo',
              icon: Icons.mail,
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..pushReplacementNamed(MAIL_ROUTE_NAME);
              }),
          _buildDrawerItem(
            context: context,
            text: 'Cambiar Contraseña',
            icon: Icons.security_rounded,
            onTap: () {
              Navigator.of(context)
                ..popUntil(
                  (route) {
                    return !(route as MaterialPageRoute).canPop;
                  },
                )
                ..pushReplacementNamed(RESET_PASSWORD_ROUTE_NAME);
            },
          ),
          _buildDrawerItem(
            context: context,
            text: 'Cerrar Sesión',
            icon: Icons.logout,
            onTap: () async {
              await authRepo.logout();
              Navigator.of(context)
                ..popUntil(
                  (route) {
                    return !(route as MaterialPageRoute).canPop;
                  },
                )
                ..pushReplacementNamed(LOGIN_ROUTE_NAME);
            },
          ),
          const Divider(),
          _buildDrawerItem(
            context: context,
            text: 'Acerca de',
            icon: Icons.info_outline_rounded,
            onTap: () {
              Navigator.of(context)
                ..popUntil(
                  (route) {
                    return !(route as MaterialPageRoute).canPop;
                  },
                )
                ..pushReplacementNamed(ABOUT_ROUTE_NAME);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
          {required BuildContext context,
          required String text,
          IconData? icon,
          Function? onTap}) =>
      ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        onTap: onTap as void Function()?,
      );
}
