import 'package:flutter/material.dart';
import '../controller/multiple_selection_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class MultipleSelectionView extends StatelessWidget {
  const MultipleSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MultipleSelectionController>(
      init: MultipleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("MultipleSelection"),
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