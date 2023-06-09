import 'package:flutter/material.dart';
import '../controller/checkfield_with_remote_datasource_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class CheckfieldWithRemoteDatasourceView extends StatelessWidget {
  const CheckfieldWithRemoteDatasourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckfieldWithRemoteDatasourceController>(
      init: CheckfieldWithRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("CheckfieldWithRemoteDatasource"),
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