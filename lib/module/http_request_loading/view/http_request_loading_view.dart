import 'package:flutter/material.dart';
import '../controller/http_request_loading_controller.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class HttpRequestLoadingView extends StatelessWidget {
  const HttpRequestLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HttpRequestLoadingController>(
      init: HttpRequestLoadingController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("HttpRequestLoading"),
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