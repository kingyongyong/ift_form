import 'package:ift_form/ift_form.dart';

typedef ValidatorFunc = dynamic Function(
    IftFormState formState, Field field, Object value);

abstract class Validator<T> {
  dynamic validate(IftFormState formState, Field field, T value);

  String onBadFormat(Field field) {
    return "${field.label}格式不正确";
  }
}

typedef ValidateResultCallback = void Function(
    bool isOk, double firstErrorOffsetY, List<String> errors);
