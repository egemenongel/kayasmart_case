import 'package:json_annotation/json_annotation.dart';

part 'coordinate_model.g.dart';

@JsonSerializable()
class CoordinateModel {
  final double? x;
  final double? y;

  const CoordinateModel({this.x, this.y});

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinateModelToJson(this);
}
