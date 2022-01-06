import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:memogenerator/data/models/position.dart';

part 'text_with_position.g.dart';

@JsonSerializable(explicitToJson: true)
class TextWithPosition extends Equatable {
  final String id;
  final String text;
  final Position position;
  final double? fontsize;
  @JsonKey(toJson: colorToJson, fromJson: colorFromJson)
  final Color? color;

  const TextWithPosition({
    required this.id,
    required this.text,
    required this.position,
    required this.color,
    required this.fontsize,
  });

  factory TextWithPosition.fromJson(Map<String, dynamic> json) =>
      _$TextWithPositionFromJson(json);

  Map<String, dynamic> toJson() => _$TextWithPositionToJson(this);

  @override
  List<Object?> get props => [id, text, position, fontsize, color];
}

String? colorToJson(final Color? color) {
  return color?.value.toRadixString(16);
}

Color? colorFromJson(final String? colorString) {
  if (colorString == null) return null;
  final intColor = int.tryParse(colorString, radix: 16);
  return intColor == null ? null : Color(intColor);
}
