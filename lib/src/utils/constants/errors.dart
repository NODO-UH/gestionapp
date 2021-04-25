class Errors {
  static const Messages = {1: 'Datos inválidos.', 2: 'Credenciales inválidas.'};

  static const DefaultError = 'Ha ocurrido un error.';

  static const ConnectionError = 'Conexión fallida. Verifique su conectividad.';

  static String? retrieveError(String message) {
    final index = int.tryParse(message);
    return index != null && Messages.containsKey(index)
        ? Messages[index]
        : DefaultError;
  }
}
