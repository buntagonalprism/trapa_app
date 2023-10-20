import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'form_store.g.dart';

/// Stores the state of a user input form.
///
/// The form consists of multiple fields, each backed by a [FieldStore]
///
/// Subclass the [FormStore] to add your fields as properties of the subclass. You can add
/// computed properties to the form, and field validation that depends on values of other fields.
///
/// [dispose] should be called when the form is no longer required.
///
/// For example:
///
/// ```dart
/// @injectable
/// class LoginForm = _LoginForm with _$LoginForm;
///
/// abstract class _LoginForm extends FormStore with Store {
///   _LoginForm() : super(errorDisplayBehaviour: ErrorDisplayBehaviour.onSubmit);
///
///   late final FieldStore<String> email = FieldStore<String>(
///     form: this,
///     initialValue: '',
///     validator: (value) => value.isEmpty ? LoginError.emailMissing : null,
///   );
///
///   late final FieldStore<String> password = FieldStore<String>(
///     form: this,
///     initialValue: '',
///     validator: (value) => value.isEmpty ? LoginError.passwordMissing : null,
///   );
///
///   late final FieldStore<String> confirmPassword = FieldStore<String>(
///     form: this,
///     initialValue: '',
///     validator: (value) {
///       if (value.isEmpty) {
///         return LoginError.confirmPasswordMissing;
///       }
///       if (value != password.value) {
///         return LoginError.confirmPasswordMismatch;
///       }
///       return null;
///     },
///   );
///
///   late final FieldStore<DateTime?> dateOfBirth = FieldStore<DateTime?>(
///     form: this,
///     initialValue: null,
///     validator: (value) => value == null ? LoginError.dateOfBirthMissing : null,
///   );
///
///   @computed
///   int get age =>
///       dateOfBirth.value != null ? DateTime.now().difference(dateOfBirth.value!).inDays ~/ 365 : 0;
/// }
/// ```
class FormStore = _FormStore with _$FormStore;

abstract class _FormStore with Store {
  _FormStore({
    required this.errorDisplayBehaviour,
  });

  final ErrorDisplayBehaviour errorDisplayBehaviour;

  @observable
  ObservableList<FieldStore> fields = ObservableList();

  /// Whether the form has been submitted. This is used by [FieldStore.errorText] to decide whether
  /// to display error messages in conjunction with the form [ErrorDisplayBehaviour]
  @observable
  bool isSubmitted = false;

  @action
  void submit() {
    isSubmitted = true;
  }

  @action
  void _addField(FieldStore field) {
    fields.add(field);
  }

  @computed
  bool get isValid => fields.every((field) => field.isValid);

  /// Dispose the form, including all fields
  void dispose() {
    for (var field in fields) {
      field.dispose();
    }
  }
}

enum ErrorDisplayBehaviour {
  /// Error is displayed only when the form is submitted. Useful for not showing errors when the
  /// user is typing while editing a new entity
  onSubmit,

  /// Error is always displayed. Useful for live validation when editing an existing entity
  always,
}

/// Stores the state of an input field within a [FormStore]
class FieldStore<T> = _FieldStore<T> with _$FieldStore<T>;

abstract class _FieldStore<T> with Store {
  _FieldStore({
    required this.form,
    required T initialValue,
    required this.validator,
  }) : value = initialValue {
    form._addField(this as FieldStore<T>);
  }

  /// Parent form that contains this field. The state of the form is used by this field to
  /// decide whether error messages should be displayed in [errorText]
  final FormStore form;

  /// Validator function that returns a [FieldError] if the field is invalid, or null if the field
  /// is valid
  final FieldValidator<T> validator;

  /// Current value of the field
  @observable
  T value;

  @action
  void set(T newValue) {
    value = newValue;
  }

  /// The error of the field, if any. For display purposes, use [errorText] instead.
  @computed
  FieldError? get error => validator(value);

  /// Whether the field is valid
  @computed
  bool get isValid => error == null;

  /// Error message text for UI display. Null if the [ErrorDisplayBehaviour] of the parent
  /// [FormStore] of this field is [ErrorDisplayBehaviour.onSubmit] and the form has not been
  /// submitted. Null if there is no error. Otherwise the localised error message is returned.
  @computed
  FieldErrorTextBuilder<T> get errorText {
    final err = error;
    return form.isSubmitted || form.errorDisplayBehaviour == ErrorDisplayBehaviour.always
        ? (ctx) => err?.message(ctx)
        : (_) => null;
  }

  /// Dispose this form field.
  void dispose() {
    // No-op
  }
}

class TextFieldStore extends FieldStore<String> {
  TextFieldStore({
    required FormStore form,
    required String initialValue,
    required FieldValidator<String> validator,
  })  : controller = TextEditingController(text: initialValue),
        super(form: form, initialValue: initialValue, validator: validator) {
    controller.addListener(() {
      super.set(controller.text);
    });
  }

  late final TextEditingController controller;

  @override
  void set(String newValue) {
    controller.text = newValue;
    super.set(value);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/// A localisable field error that can be displayed in the UI
///
/// Implement this class to add your own field errors. The buildcontext is available to lookup
/// localized messages. For example:
///
/// ```dart
/// enum LoginError implements FieldError {
///   emailMissing,
///   passwordMissing,
///   confirmPasswordMissing,
///   confirmPasswordMismatch,
///   dateOfBirthMissing;
///
///   const LoginError();
///
///   @override
///   String message(BuildContext context) {
///     switch (this) {
///       case LoginError.emailMissing:
///         return 'Email is required';
///       case LoginError.passwordMissing:
///         return 'Password is required';
///       case LoginError.confirmPasswordMissing:
///         return 'Confirm password is required';
///       case LoginError.dateOfBirthMissing:
///         return 'Date of birth is required';
///       case LoginError.confirmPasswordMismatch:
///         return 'Passwords do not match';
///     }
///   }
/// }
/// ```
abstract class FieldError {
  String message(BuildContext context);
}

/// A builder for a localized error message for a [FieldError]
typedef FieldErrorTextBuilder<T> = String? Function(BuildContext context);

/// A validator function for a [FieldStore]
typedef FieldValidator<T> = FieldError? Function(T value);
