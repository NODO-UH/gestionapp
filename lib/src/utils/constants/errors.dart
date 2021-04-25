class Errors {
  static const Messages = {
    1: 'Datos inválidos.',
    2: 'Credenciales inválidas.',
    20: 'Datos inválidos.',
  };

  static const DefaultError = 'Ha ocurrido un error.';

  static const ConnectionError = 'Conexión fallida. Verifique su conectividad.';

  static String? retrieveError(String message) {
    try {
      final index = int.parse(message);
      return Messages[index];
    } catch (_) {}

    return DefaultError;
  }
}
