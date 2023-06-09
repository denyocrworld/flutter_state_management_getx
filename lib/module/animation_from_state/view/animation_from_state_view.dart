import 'package:flutter/material.dart';
import '../controller/animation_from_state_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class AnimationFromStateView extends StatelessWidget {
  const AnimationFromStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimationFromStateController>(
      init: AnimationFromStateController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("AnimationFromState"),
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