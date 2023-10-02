import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:nasa_project/core/utils/media_query_values.dart';

class EarthModel extends StatelessWidget {
  const EarthModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: double.infinity,
      height: context.height * 0.3,
      child: ModelViewer(
        src: 'assets/3d_models/Earth.glb',
        autoRotate: true,
      ),
    ));
  }
}
