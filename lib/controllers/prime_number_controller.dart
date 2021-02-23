import 'package:get/get.dart';

class PrimeNumberController extends GetxController{


  List<int> primeNumber=List<int>().obs;
  int flag;
  var complete=false.obs;
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    getPrimeNumberList();
  }
  getPrimeNumberList(){
    for(int i=0;i<=100;i++){
      if(i==1||i==0){
        continue;
      }
      flag=0;
      for(int j=2;j<=i/2;++j)
        {
          if(i%j==0)
            {
              flag=0;
              break;
            }
        }
      if(flag==1)
        {
          primeNumber.add(i);
        }
    }
complete(true);
  }
}