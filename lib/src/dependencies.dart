import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DependencyInjection {
  static Future<void> init() async {
    final I = GetIt.I;

    // Data Providers
    I.registerSingleton<GestionApi>(GestionApi());

    final sharedPrefs = await SharedPreferences.getInstance();
    I.registerSingleton<SharedPreferences>(sharedPrefs);

    I.registerLazySingleton(
      () => const FlutterSecureStorage(),
    );

    I.registerLazySingleton<ILocalStorage>(
      () => LocalStorage(
        prefs: I(),
        secureStorage: I(),
      ),
    );

    // Repositories
    I.registerLazySingleton<AuthRepository>(
      () => AuthRepository(
        api: I(),
        localStorage: I(),
      ),
    );

    I.registerLazySingleton<QuotasRepository>(
      () => QuotasRepository(
        api: I(),
      ),
    );

    I.registerLazySingleton<MailQuotasRepository>(
      () => MailQuotasRepository(
        api: I(),
      ),
    );

    I.registerLazySingleton<ProfileRepository>(
      () => ProfileRepository(
        api: I(),
      ),
    );

    I.registerLazySingleton<RecoverPasswordRepository>(
      () => RecoverPasswordRepository(
        api: I(),
      ),
    );

    I.registerLazySingleton<VersionRepository>(
      () => VersionRepository(),
    );

    // Blocs
    I.registerFactory<HomeBloc>(
      () => HomeBloc(
        authRepository: I(),
        profileRepository: I(),
      ),
    );

    I.registerFactory<LoginBloc>(
      () => LoginBloc(
        authRepository: I(),
        localStorage: I(),
      ),
    );

    I.registerFactory<QuotaBloc>(
      () => QuotaBloc(
        quotasRepository: I(),
      ),
    );

    I.registerFactory<ResetPasswordBloc>(
      () => ResetPasswordBloc(
        authRepository: I(),
      ),
    );

    I.registerFactory<MailQuotaBloc>(
      () => MailQuotaBloc(
        mailQuotasRepository: I(),
      ),
    );

    I.registerFactory<RecoverPasswordBloc>(
      () => RecoverPasswordBloc(
        recoverPasswordRepository: I(),
      ),
    );

    I.registerFactory<RegisterBloc>(
      () => RegisterBloc(
        repository: I(),
      ),
    );

    I.registerFactory<ProfileBloc>(
      () => ProfileBloc(
        profileRepository: I(),
      ),
    );
  }
}
