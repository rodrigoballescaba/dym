class AppValidators {
  String? nameValidator(String? value) {
    /*if (value == null) return S.current.new_user_name_empty;
    if (value == "") return S.current.new_user_name_empty;*/
    return null;
  }

  String? phoneValidator(String? value) {
    /*if (value == null) return S.current.phone_empty;
    if (value == "") return S.current.phone_empty;*/
    return null;
  }

  String? passwordValidator(String? value) {
    /*if (value == null) return S.current.new_user_wrong_password;
    if (value == "") return S.current.new_user_wrong_password;*/
    return null;
  }

  String? changePasswordValidator(String? pass1, String? pass2) {
    /*if (pass1 == null) return S.current.new_user_wrong_password;
    if (pass1 == "") return S.current.new_user_wrong_password;
    if (pass1 != "" && pass1.trim() != pass2!.trim()) {
      return S.current.not_match_password;
    }*/
    return null;
  }

  String? emailValidator(String? value) {
    /*const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);
    if (value == null) return S.current.invalid_mail;
    if (value == "") return S.current.invalid_mail;
    if (value != "" && value.isEmpty || !regex.hasMatch(value)) {
      return S.current.invalid_mail;
    }*/
    return null;
  }
}
