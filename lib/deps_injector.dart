import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/local.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/presentation/blocs.dart';

final di = GetIt.instance;

Future<void> init() async {
  //Data Providers
  di.registerSingleton<GestionApi>(GestionApi());

  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerSingleton<SharedPreferences>(sharedPrefs);

  di.registerLazySingleton(
    () => const FlutterSecureStorage(),
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

  di.registerLazySingleton<ProfileRepository>(
    () => ProfileRepository(
      api: di(),
    ),
  );

  di.registerLazySingleton<RecoverPasswordRepository>(
    () => RecoverPasswordRepository(
      api: di(),
    ),
  );

  di.registerLazySingleton<VersionRepository>(
    () => VersionRepository(),
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

  di.registerFactory<MailQuotaBloc>(
    () => MailQuotaBloc(
      mailQuotasRepository: di(),
    ),
  );

  di.registerFactory<RecoverPasswordBloc>(
    () => RecoverPasswordBloc(
      recoverPasswordRepository: di(),
    ),
  );

  di.registerFactory<RegisterBloc>(
    () => RegisterBloc(
      repository: di(),
    ),
  );

  di.registerFactory<ProfileBloc>(
    () => ProfileBloc(
      profileRepository: di(),
    ),
  );
}
