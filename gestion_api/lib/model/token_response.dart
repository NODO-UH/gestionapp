//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_response.g.dart';

abstract class TokenResponse implements Built<TokenResponse, TokenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'tokenRefresh')
    String get tokenRefresh;

    // Boilerplate code needed to wire-up generated code
    TokenResponse._();

    static void _initializeBuilder(TokenResponseBuilder b) => b;

    factory TokenResponse([void updates(TokenResponseBuilder b)]) = _$TokenResponse;
    static Serializer<TokenResponse> get serializer => _$tokenResponseSerializer;
}

