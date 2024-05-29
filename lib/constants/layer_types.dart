import 'package:json_annotation/json_annotation.dart';

enum LayerType {
  @JsonValue('text')
  text,
  @JsonValue('image')
  image,
  @JsonValue('rectangle')
  rectangle,
  @JsonValue('circle')
  circle,
  @JsonValue('line')
  line,
  @JsonValue('ellipse')
  ellipse,
  @JsonValue('polygon')
  polygon,
}
