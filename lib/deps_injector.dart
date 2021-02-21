import 'package:get_it/get_it.dart';

import 'src/data/api/api.dart';

final di = GetIt.instance;

Future<void> init() async {
  di.registerSingleton<GestionApi>(GestionApi());
}
