import 'package:djembe/djembe.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormFieldValidators', () {
    test('mandatory() returns error when the text is null or empty.', () {
      const errorText = 'ERROR';
      final sut = FormFieldValidators.mandatory(errorText: errorText);
      expect(sut.call(''), errorText);
      expect(sut.call(null), errorText);
      expect(sut.call('foo'), null);
    });
  });
}
