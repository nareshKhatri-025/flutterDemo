import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/api_call_controller.dart';
import 'package:get/get.dart';

class ApiCallScreen extends StatefulWidget {
  @override
  _ApiCallScreenState createState() => _ApiCallScreenState();
}

class _ApiCallScreenState extends State<ApiCallScreen> {
  ApiCallController controller = Get.put(ApiCallController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: ListView.builder(
          itemCount: controller.datum.length,
          itemBuilder: (context, index) => ListTile(
                subtitle: Text("${controller.datum[index].email}"),
                leading: Image.network(controller.datum[index].avatar),
                title: Text(
                    "${controller.datum[index].firstName} ${controller.datum[index].lastName}"),
              )),
    );
  }
}
