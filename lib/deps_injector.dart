import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gestionuh/src/data/local.dart';

import 'src/data/api/api.dart';

final di = GetIt.instance;

Future<void> init() async {
  //Data Providers
  di.registerSingleton<GestionApi>(GestionApi());

  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerSingleton<SharedPreferences>(sharedPrefs);

  di.registerLazySingleton<ILocalStorage>(
    () => LocalStorage(
      prefs: di(),
    ),
  );

  //Repositories
  di.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      api: di(),
      localStorage: di(),
    ),
  );

  di.registerLazySingleton<QuotasRepository>(
    () => QuotasRepository(
      api: di(),
    ),
  );

  //Blocs
  di.registerFactory<LoginBloc>(
    () => LoginBloc(
      authRepository: di(),
    ),
  );

  di.registerFactory<QuotaBloc>(
    () => QuotaBloc(
      quotasRepository: di(),
    ),
  );
}
