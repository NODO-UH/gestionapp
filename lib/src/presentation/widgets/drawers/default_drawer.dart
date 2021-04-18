import 'package:flutter/material.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';
import 'package:get_it/get_it.dart';

class DefaultDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    final authRepo = GetIt.I<AuthRepository>();
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
                ..pushNamedAndRemoveUntil(
                  PROFILE_ROUTE_NAME,
                  (route) => false,
                );
            },
          ),
          _buildDrawerItem(
            context: context,
            text: 'Mi Cuota',
            icon: Icons.data_usage,
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushNamedAndRemoveUntil(
                  QUOTA_ROUTE_NAME,
                  (route) => false,
                );
            },
          ),
          _buildDrawerItem(
              context: context,
              text: 'Correo',
              icon: Icons.mail,
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..pushNamedAndRemoveUntil(
                    MAIL_ROUTE_NAME,
                    (route) => false,
                  );
              }),
          _buildDrawerItem(
            context: context,
            text: 'Cambiar Contraseña',
            icon: Icons.security_rounded,
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushNamedAndRemoveUntil(
                  RESET_PASSWORD_ROUTE_NAME,
                  (route) => false,
                );
            },
          ),
          _buildDrawerItem(
            context: context,
            text: 'Cerrar Sesión',
            icon: Icons.logout,
            onTap: () async {
              Navigator.of(context).pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:
                          const Text('¿Está seguro que desea cerrar sesión?'),
                      actions: [
                        TextButton(
                          onPressed: () async {
                            await authRepo.logout();
                            Navigator.of(context)
                              ..pop()
                              ..pushNamedAndRemoveUntil(
                                LOGIN_ROUTE_NAME,
                                (route) => false,
                              );
                          },
                          child: const Text('Si'),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.of(context).pop();
                          },
                          child: const Text('No'),
                        ),
                      ],
                    );
                  });
            },
          ),
          const Divider(),
          _buildDrawerItem(
            context: context,
            text: 'Acerca de',
            icon: Icons.info_outline_rounded,
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushNamedAndRemoveUntil(
                  ABOUT_ROUTE_NAME,
                  (route) => false,
                );
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
