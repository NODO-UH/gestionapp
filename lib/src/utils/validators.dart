String? safetyPasswordValidator(String? value) {
  if (value == null || value.length < 8) {
    return 'Debe contener al menos 8 caracteres';
  } else if (value.length != value.trim().length) {
    return 'No se permiten espacios al inicio o al final';
  } else if (!value.contains(RegExp(r'[!#$@\[\]\\.,%&*+/=?^_`{|}~-]'))) {
    return 'Debe contener al menos un caracter especial';
  } else if (!value.contains(RegExp('[0-9]'))) {
    return 'Debe contener al menos un número';
  } else {
    if (!value.contains(RegExp('[A-Z]'))) {
      return 'Debe contener al menos una mayúscula';
    } else if (!value.contains(RegExp('[a-z]'))) {
      return 'Debe contener al menos una minúscula';
    }
  }
  return null;
}

String? identityNumberCIValidator(String? value) {
  if (value == null || value == '') {
    return 'No puede estar vacío';
  } else if (int.tryParse(value) == null) {
    return 'Sólo se admiten dígitos';
  } else if (value.length < 11) {
    return 'Faltan dígitos de su número de Carnet de Identidad';
  } else if (value.length > 11) {
    return 'Sobran dígitos de su número de Carnet de Identidad';
  }
  return null;
}

String? answerValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Debe responder la pregunta seleccionada';
  }
  if (value.length != value.trim().length) {
    return 'No puede contener espacios al inicio o al final';
  }
  return null;
}

String? userNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Debe introducir su nombre de usuario';
  }
  return null;
}

String? currentPasswordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Debe introducir su contraseña';
  }
  return null;
}
