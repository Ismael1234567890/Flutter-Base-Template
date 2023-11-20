import '/utils/helpers/app_extension.dart';

class ValidationInput {
  /// Si le champ est non obligatoire => validator: ValidationInput.validatorName
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorName(value, isRequired: true),
  static String? validatorName(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
      if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)) {
        return "Merci de donner un nom valide !";
      }
    } else {
      if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value!)) {
        return "Merci de donner un nom valide !";
      }
    }
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorEmail
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorEmail(value, isRequired: true),
  static String? validatorEmail(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
      if (!isEmailValid(value)) {
        return "Merci de donner un email valide !";
      }
    } else {
      if (!isEmailValid(value!) && value.isNotEmpty) {
        return "Merci de donner un email valide !";
      }
    }
    return null;
  }

  /// utilisation => validator: ValidationInput.validatorMotDePasse
  static String? validatorMotDePasse(String? value) {
    if (value!.isEmpty) {
      return "Merci de remplir ce champ !";
    }
    if (value.length < 6) {
      return 'Le mot de passe doit contenir au moins 6 caractères.';
    }
    if (!value.contains(RegExp(r'[a-zA-Z]'))) {
      return 'Le mot de passe doit contenir au moins une lettre.';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Le mot de passe doit contenir au moins un chiffre.';
    }
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorMotDePasse
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorMotDePasse(value, isRequired: true),
  static String? validatorNumerique(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
      if (int.tryParse(value) == null) {
        return 'Veuillez entrer un nombre valide';
      }
    } else {
      if (int.tryParse(value!) == null) {
        return 'Veuillez entrer un nombre valide';
      }
    }
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorDate
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorDate(value, isRequired: true),
  static String? validatorDate(String? value, {bool isRequired = false}) {
    const datePattern = r'^\d{2}/\d{2}/\d{4}$';
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }

      if (!RegExp(datePattern).hasMatch(value)) {
        return 'Format de date invalide. Utilisez jj/mm/aaaa.';
      }
    } else {
      if (!RegExp(datePattern).hasMatch(value!)) {
        return 'Format de date invalide. Utilisez jj/mm/aaaa.';
      }
    }
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorHeure
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorHeure(value, isRequired: true),
  static String? validatorHeure(String? value, {bool isRequired = false}) {
    const timePattern = r'^([01]\d|2[0-3]):([0-5]\d)$';
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }

      if (!RegExp(timePattern).hasMatch(value)) {
        return 'Format d\'heure invalide. Utilisez hh:mm.';
      }
    } else {
      if (!RegExp(timePattern).hasMatch(value!)) {
        return 'Format d\'heure invalide. Utilisez hh:mm.';
      }
    }
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorSelectionRadio
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (dynamic value) => ValidationInput.validatorSelectionRadio(value, isRequired: true),
  static String? validatorSelectionRadio(value, {bool isRequired = false}) {
    if (isRequired) {
      if (value == null || value.isEmpty) {
        return "Merci de choisir une valeur!";
      }
    }

    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorTextMultiligne
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorTextMultiligne(value, isRequired: true),
  static String? validatorTextMultiligne(String? value,
      {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorFichier
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorFichier(value, isRequired: true),
  static String? validatorFichier(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorAddress
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorAddress(value, isRequired: true),
  static String? validatorAddress(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorCreditCard
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorCreditCard(value, isRequired: true),
  static String? validatorCreditCard(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorCodePostal
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorCodePostal(value, isRequired: true),
  static String? validatorCodePostal(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// Si le champ est non obligatoire => validator: ValidationInput.validatorCVV
  ///
  /// S'il est obligatoire, veuillez remettre sur le format =>
  ///
  ///validator: (value) => ValidationInput.validatorCVV(value, isRequired: true),
  static String? validatorCVV(String? value, {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }

  /// ajouter l'initial en String ex: "ORD-"
  ///
  ///format pour l'implementé: validator: (value) => ValidationInput.validatorAddress(value, initial: "ORD-", isRequired: true),
  static String? validatorCustomInitial(String? value,
      {bool isRequired = false}) {
    if (isRequired) {
      if (value!.isEmpty) {
        return "Merci de remplir ce champ !";
      }
    } else {}
    return null;
  }
}
