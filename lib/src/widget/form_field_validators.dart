import 'package:flutter/widgets.dart';

class FormFieldValidators {
  FormFieldValidators._();

  static FormFieldValidator<String> mandatory(
          {String errorText = '入力が必須です。'}) =>
      (value) {
        if (value?.isEmpty ?? true) {
          return errorText;
        }
        return null;
      };

  static FormFieldValidator<String> mix(
          List<FormFieldValidator<String>> validators) =>
      (value) {
        for (var validator in validators) {
          final result = validator.call(value);
          if (result != null) {
            return result;
          }
        }
        return null;
      };
}
