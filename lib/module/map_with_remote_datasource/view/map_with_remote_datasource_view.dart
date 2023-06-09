import 'package:flutter/material.dart';
import '../controller/map_with_remote_datasource_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class MapWithRemoteDatasourceView extends StatelessWidget {
  const MapWithRemoteDatasourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapWithRemoteDatasourceController>(
      init: MapWithRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("MapWithRemoteDatasource"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}