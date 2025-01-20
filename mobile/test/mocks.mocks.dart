// Mocks generated by Mockito 5.4.4 from annotations
// in mobile/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i8;

import 'package:flutter/material.dart' as _i2;
import 'package:flutter_masked_text2/flutter_masked_text2.dart' as _i3;
import 'package:mobile/db_service.dart' as _i4;
import 'package:mobile/provider/form_data_provider.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTextEditingController_0 extends _i1.SmartFake
    implements _i2.TextEditingController {
  _FakeTextEditingController_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMaskedTextController_1 extends _i1.SmartFake
    implements _i3.MaskedTextController {
  _FakeMaskedTextController_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DatabaseService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseService extends _i1.Mock implements _i4.DatabaseService {
  MockDatabaseService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> connect() => (super.noSuchMethod(
        Invocation.method(
          #connect,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> insertFormData(
    String? name,
    String? phone,
    String? email,
    String? comment,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertFormData,
          [
            name,
            phone,
            email,
            comment,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> disconnect() => (super.noSuchMethod(
        Invocation.method(
          #disconnect,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [FormDataProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockFormDataProvider extends _i1.Mock implements _i6.FormDataProvider {
  MockFormDataProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TextEditingController get nameController => (super.noSuchMethod(
        Invocation.getter(#nameController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#nameController),
        ),
      ) as _i2.TextEditingController);

  @override
  _i3.MaskedTextController get phoneController => (super.noSuchMethod(
        Invocation.getter(#phoneController),
        returnValue: _FakeMaskedTextController_1(
          this,
          Invocation.getter(#phoneController),
        ),
      ) as _i3.MaskedTextController);

  @override
  _i2.TextEditingController get emailController => (super.noSuchMethod(
        Invocation.getter(#emailController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#emailController),
        ),
      ) as _i2.TextEditingController);

  @override
  _i2.TextEditingController get commentController => (super.noSuchMethod(
        Invocation.getter(#commentController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#commentController),
        ),
      ) as _i2.TextEditingController);

  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#name),
        ),
      ) as String);

  @override
  String get phone => (super.noSuchMethod(
        Invocation.getter(#phone),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#phone),
        ),
      ) as String);

  @override
  String get email => (super.noSuchMethod(
        Invocation.getter(#email),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#email),
        ),
      ) as String);

  @override
  String get comment => (super.noSuchMethod(
        Invocation.getter(#comment),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#comment),
        ),
      ) as String);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  void clearFields() => super.noSuchMethod(
        Invocation.method(
          #clearFields,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}