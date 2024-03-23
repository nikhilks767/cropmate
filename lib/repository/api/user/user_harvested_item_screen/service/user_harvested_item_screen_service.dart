import 'dart:developer';
import '../../../../helper/api_helper.dart';

class UserHarvestedItemScreenService {
  static Future<dynamic> getprodcutList() async {
    try {
      var decodedData = await ApiHelper.getData(endPoint: "cropmapp/farmerproducts/");
      log('service=>' + decodedData.toString());
      if (decodedData != null && decodedData["status"] == 1) {
        log("Data fetched successfully");
        return decodedData['data'];
      } else {
        log("Failed to fetch data: ${decodedData?["status"]}");
        return null;
      }
    } catch (e) {
      log("Error fetching data: $e");
      return null;
    }
  }
}


