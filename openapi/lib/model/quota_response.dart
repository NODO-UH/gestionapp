//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quota_response.g.dart';

abstract class QuotaResponse implements Built<QuotaResponse, QuotaResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'quota')
    int get quota;

    @nullable
    @BuiltValueField(wireName: r'bonus')
    int get bonus;

    @nullable
    @BuiltValueField(wireName: r'consumed')
    int get consumed;

    // Boilerplate code needed to wire-up generated code
    QuotaResponse._();

    static void _initializeBuilder(QuotaResponseBuilder b) => b;

    factory QuotaResponse([void updates(QuotaResponseBuilder b)]) = _$QuotaResponse;
    static Serializer<QuotaResponse> get serializer => _$quotaResponseSerializer;
}

