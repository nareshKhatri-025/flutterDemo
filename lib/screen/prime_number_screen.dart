import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/prime_number_controller.dart';
import 'package:get/get.dart';

class PrimeNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PrimeNumberController _controller =Get.put(PrimeNumberController());
    return Scaffold(
      body: Container(
        child: GridView.count(crossAxisCount: 2 ,children:List.generate(100, (index) {return Text("Index $index");},),)),
    );

  }
}
