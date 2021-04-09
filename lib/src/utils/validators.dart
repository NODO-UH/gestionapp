String safetyPasswordValidator(String value) {
  if (value.length < 8)
    return 'Debe contener al menos 8 caracteres';
  else if (!value.contains(RegExp(r'[!#$@\[\]\\.,%&*+/=?^_`{|}~-]')))
    return 'Debe contener al menos un caracter especial';
  else if (!value.contains(RegExp(r'[0-9]')))
    return 'Debe contener al menos un número';
  else if (!value.contains(RegExp(r'[A-Z]')))
    return 'Debe contener al menos una mayúscula';
  else if (!value.contains(RegExp(r'[a-z]')))
    return 'Debe contener al menos una minúscula';
  return null;
}
