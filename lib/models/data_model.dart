import 'package:json_annotation/json_annotation.dart';
import 'package:kayasmart_case/models/layer_model.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  final List<LayerModel> layers;

  const DataModel({required this.layers});

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
