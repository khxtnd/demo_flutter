// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBase<T> _$ResponseBaseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ResponseBase<T>(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: fromJsonT(json['data']),
);

Map<String, dynamic> _$ResponseBaseToJson<T>(
  ResponseBase<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': toJsonT(instance.data),
};
