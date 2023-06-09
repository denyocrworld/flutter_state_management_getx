import 'package:flutter/material.dart';
import '../controller/dropdown_with_remote_datasource_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class DropdownWithRemoteDatasourceView extends StatelessWidget {
  const DropdownWithRemoteDatasourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropdownWithRemoteDatasourceController>(
      init: DropdownWithRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("DropdownWithRemoteDatasource"),
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