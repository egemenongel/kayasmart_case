// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LayerModel _$LayerModelFromJson(Map<String, dynamic> json) => LayerModel(
      type: $enumDecode(_$LayerTypeEnumMap, json['type']),
      value: json['value'] as String?,
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      color: json['color'] as String?,
      position: json['position'] == null
          ? null
          : CoordinateModel.fromJson(json['position'] as Map<String, dynamic>),
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
      start: json['start'] == null
          ? null
          : CoordinateModel.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : CoordinateModel.fromJson(json['end'] as Map<String, dynamic>),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => CoordinateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LayerModelToJson(LayerModel instance) =>
    <String, dynamic>{
      'type': _$LayerTypeEnumMap[instance.type]!,
      'value': instance.value,
      'fontSize': instance.fontSize,
      'color': instance.color,
      'position': instance.position,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'radius': instance.radius,
      'start': instance.start,
      'end': instance.end,
      'points': instance.points,
    };

const _$LayerTypeEnumMap = {
  LayerType.text: 'text',
  LayerType.image: 'image',
  LayerType.rectangle: 'rectangle',
  LayerType.circle: 'circle',
  LayerType.line: 'line',
  LayerType.ellipse: 'ellipse',
  LayerType.polygon: 'polygon',
};
