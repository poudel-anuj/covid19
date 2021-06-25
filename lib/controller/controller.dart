import 'package:covid19/models/data.dart';
import 'package:covid19/services/remote_services.dart';
import 'package:get/state_manager.dart';

class CovidController extends GetxController {
  var recordList = Welcome().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchRecords();
      if (products != null) {
        recordList.value = products ;

      }
    } finally {
      isLoading(false);
   
    }
  }
}
