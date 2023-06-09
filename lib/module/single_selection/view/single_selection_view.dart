import 'package:flutter/material.dart';
import '../controller/single_selection_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class SingleSelectionView extends StatelessWidget {
  const SingleSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingleSelectionController>(
      init: SingleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("SingleSelection"),
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