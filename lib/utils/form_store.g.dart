// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormStore on _FormStore, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: '_FormStore.isValid'))
      .value;

  late final _$fieldsAtom = Atom(name: '_FormStore.fields', context: context);

  @override
  ObservableList<FieldStore<dynamic>> get fields {
    _$fieldsAtom.reportRead();
    return super.fields;
  }

  @override
  set fields(ObservableList<FieldStore<dynamic>> value) {
    _$fieldsAtom.reportWrite(value, super.fields, () {
      super.fields = value;
    });
  }

  late final _$isSubmittedAtom =
      Atom(name: '_FormStore.isSubmitted', context: context);

  @override
  bool get isSubmitted {
    _$isSubmittedAtom.reportRead();
    return super.isSubmitted;
  }

  @override
  set isSubmitted(bool value) {
    _$isSubmittedAtom.reportWrite(value, super.isSubmitted, () {
      super.isSubmitted = value;
    });
  }

  late final _$_FormStoreActionController =
      ActionController(name: '_FormStore', context: context);

  @override
  void submit() {
    final _$actionInfo =
        _$_FormStoreActionController.startAction(name: '_FormStore.submit');
    try {
      return super.submit();
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _addField(FieldStore<dynamic> field) {
    final _$actionInfo =
        _$_FormStoreActionController.startAction(name: '_FormStore._addField');
    try {
      return super._addField(field);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fields: ${fields},
isSubmitted: ${isSubmitted},
isValid: ${isValid}
    ''';
  }
}

mixin _$FieldStore<T> on _FieldStore<T>, Store {
  Computed<FieldError?>? _$errorComputed;

  @override
  FieldError? get error => (_$errorComputed ??=
          Computed<FieldError?>(() => super.error, name: '_FieldStore.error'))
      .value;
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: '_FieldStore.isValid'))
      .value;
  Computed<FieldErrorTextBuilder<T>>? _$errorTextComputed;

  @override
  FieldErrorTextBuilder<T> get errorText => (_$errorTextComputed ??=
          Computed<FieldErrorTextBuilder<T>>(() => super.errorText,
              name: '_FieldStore.errorText'))
      .value;

  late final _$valueAtom = Atom(name: '_FieldStore.value', context: context);

  @override
  T get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(T value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_FieldStoreActionController =
      ActionController(name: '_FieldStore', context: context);

  @override
  void set(T newValue) {
    final _$actionInfo =
        _$_FieldStoreActionController.startAction(name: '_FieldStore.set');
    try {
      return super.set(newValue);
    } finally {
      _$_FieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
error: ${error},
isValid: ${isValid},
errorText: ${errorText}
    ''';
  }
}
