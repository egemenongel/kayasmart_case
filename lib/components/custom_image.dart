import 'package:flutter/material.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    if (layer.url == null ||
        layer.position == null ||
        layer.height == null ||
        layer.width == null) {
      return const SizedBox.shrink();
    }

    final url = layer.url!;
    final position = layer.position!;
    final height = layer.height!;
    final width = layer.width!;

    return Positioned(
      top: position.y ?? 0,
      left: position.x ?? 0,
      child: Image.network(
        url,
        height: height,
        width: width,
      ),
    );
  }
}
