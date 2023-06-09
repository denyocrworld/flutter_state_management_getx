import 'package:flutter/material.dart';
import '../controller/enabled_or_disabled_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class EnabledOrDisabledView extends StatelessWidget {
  const EnabledOrDisabledView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EnabledOrDisabledController>(
      init: EnabledOrDisabledController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("EnabledOrDisabled"),
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