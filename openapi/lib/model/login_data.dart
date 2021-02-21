//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_data.g.dart';

abstract class LoginData implements Built<LoginData, LoginDataBuilder> {

    /// User name
    @nullable
    @BuiltValueField(wireName: r'user')
    String get user;

    /// User password
    @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    // Boilerplate code needed to wire-up generated code
    LoginData._();

    static void _initializeBuilder(LoginDataBuilder b) => b;

    factory LoginData([void updates(LoginDataBuilder b)]) = _$LoginData;
    static Serializer<LoginData> get serializer => _$loginDataSerializer;
}

