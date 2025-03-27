import 'package:json_annotation/json_annotation.dart';

part 'response_base.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseBase<T> {
  final int code;
  final String message;
  final T data;

  ResponseBase({
    required this.code,
    required this.message,
    required this.data,
  });


  factory ResponseBase.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) => _$ResponseBaseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$ResponseBaseToJson(this, toJsonT);

}

