import 'package:json_annotation/json_annotation.dart';
import 'package:kayasmart_case/constants/layer_types.dart';
import 'package:kayasmart_case/models/coordinate_model.dart';

part 'layer_model.g.dart';

@JsonSerializable()
class LayerModel {
  final LayerType type;
  final String? value;
  final double? fontSize;
  final String? color;
  final CoordinateModel? position;
  final String? url;
  final double? width;
  final double? height;
  final double? radius;
  final CoordinateModel? start;
  final CoordinateModel? end;
  final List<CoordinateModel>? points;

  const LayerModel({
    required this.type,
    this.value,
    this.fontSize,
    this.color,
    this.position,
    this.url,
    this.width,
    this.height,
    this.radius,
    this.start,
    this.end,
    this.points,
  });

  factory LayerModel.fromJson(Map<String, dynamic> json) =>
      _$LayerModelFromJson(json);

  Map<String, dynamic> toJson() => _$LayerModelToJson(this);
}
