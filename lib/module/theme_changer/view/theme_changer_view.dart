import 'package:flutter/material.dart';
import '../controller/theme_changer_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class ThemeChangerView extends StatelessWidget {
  const ThemeChangerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeChangerController>(
      init: ThemeChangerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ThemeChanger"),
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