import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/data/api/api.dart';
import 'src/data/local.dart';
import 'src/data/repository.dart';
import 'src/presentation/blocs.dart';
import 'src/presentation/blocs/reset_password_bloc/resetpassword_bloc.dart';

final di = GetIt.instance;

Future<void> init() async {
  //Data Providers
  di.registerSingleton<GestionApi>(GestionApi());

  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerSingleton<SharedPreferences>(sharedPrefs);

  di.registerLazySingleton(
    () => FlutterSecureStorage(),
  );

  di.registerLazySingleton<ILocalStorage>(
    () => LocalStorage(
      prefs: di(),
      secureStorage: di(),
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

  di.registerLazySingleton<MailQuotasRepository>(
    () => MailQuotasRepository(
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

  di.registerFactory<ResetPasswordBloc>(
    () => ResetPasswordBloc(
      authRepository: di(),
    ),
  );
}
