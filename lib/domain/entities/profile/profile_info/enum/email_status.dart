import 'package:json_annotation/json_annotation.dart';

enum EmailStatus {
  @JsonValue("PROCESSING") PROCESSING,
  @JsonValue("CONFIRMED") CONFIRMED,
}