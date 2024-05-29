import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kayasmart_case/components/custom_circle.dart';
import 'package:kayasmart_case/components/custom_ellipse.dart';
import 'package:kayasmart_case/components/custom_error_widget.dart';
import 'package:kayasmart_case/components/custom_image.dart';
import 'package:kayasmart_case/components/custom_line.dart';
import 'package:kayasmart_case/components/custom_polygon.dart';
import 'package:kayasmart_case/components/custom_rectangle.dart';
import 'package:kayasmart_case/components/custom_text.dart';
import 'package:kayasmart_case/components/loading_widget.dart';
import 'package:kayasmart_case/constants/layer_types.dart';
import 'package:kayasmart_case/models/data_model.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Future<DataModel> fetchData() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> json = jsonDecode(jsonString);

    return DataModel.fromJson(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<DataModel>(
            future: fetchData(),
            builder: (_, AsyncSnapshot<DataModel> snapshot) {
              if (snapshot.hasError) {
                const CustomErrorWidget();
              }
              return switch (snapshot.connectionState) {
                ConnectionState.none => const CustomErrorWidget(),
                ConnectionState.waiting => const LoadingWidget(),
                ConnectionState.active => const LoadingWidget(),
                ConnectionState.done => SafeArea(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: _buildLayers(
                          snapshot.data?.layers ?? [],
                        ),
                      ),
                    ),
                  )
              };
            }));
  }

  List<Widget> _buildLayers(List<LayerModel> layers) {
    return layers.map((layer) {
      return switch (layer.type) {
        LayerType.circle => CustomCircle(layer: layer),
        LayerType.ellipse => CustomEllipse(layer: layer),
        LayerType.line => CustomLine(layer: layer),
        LayerType.polygon => CustomPolygon(layer: layer),
        LayerType.image => CustomImage(layer: layer),
        LayerType.text => CustomText(layer: layer),
        LayerType.rectangle => CustomRectangle(layer: layer),
      };
    }).toList();
  }
}
