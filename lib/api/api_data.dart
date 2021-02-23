
import 'package:flutter_demo/api/api_model.dart';
import 'package:flutter_demo/api/datum.dart';
import 'package:http/http.dart'as http;

class ApiData {

  static const String _apiUrl="https://reqres.in/api/users?page=1";

  Future<List<Datum>> getProfileData()async
  {
    try{
      var _response=await http.get(_apiUrl,headers: {
        "Content-Type":"application/json",
      });

      if(_response.statusCode==200)
        {
          var _datum=welcomeFromJson(_response.body);
          return _datum.data;
        }
    }catch(e)
    {
      print(e);
    }

  }
}