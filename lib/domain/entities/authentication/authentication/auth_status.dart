import 'package:json_annotation/json_annotation.dart';

enum AuthStatus {
  @JsonValue("PROCESSING") PROCESSING,
  @JsonValue("CONFIRMED") CONFIRMED,
  @JsonValue("SYNCHRONISING") SYNCHRONISING,
}