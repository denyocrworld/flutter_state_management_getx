// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DemoView extends StatelessWidget {
  const DemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> menuList = [
      {
        "label": "Getx",
        "page": Container(),
      },
      {
        "label": "Provider",
        "page": Container(),
      },
      {
        "label": "Riverpod",
        "page": Container(),
      },
      {
        "label": "Bloc",
        "page": Container(),
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: menuList.length,
        padding: const EdgeInsets.all(20.0),
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          var item = menuList[index];
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => item["page"]),
            ),
            child: Text(item["label"]),
          );
        },
      ),
    );
  }
}
