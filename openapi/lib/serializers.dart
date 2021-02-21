//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/error.dart';
import 'package:openapi/model/login_data.dart';
import 'package:openapi/model/quota_response.dart';
import 'package:openapi/model/token_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Error,
  LoginData,
  QuotaResponse,
  TokenResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
