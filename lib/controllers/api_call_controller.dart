import 'package:flutter_demo/api/api_data.dart';
import 'package:flutter_demo/api/datum.dart';
import 'package:get/get.dart';

class ApiCallController extends GetxController
{
  ApiData _apiData=ApiData();
  var datum=List<Datum>().obs;
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    var _res=await _apiData.getProfileData();
    datum.addAll(_res);
  }

}