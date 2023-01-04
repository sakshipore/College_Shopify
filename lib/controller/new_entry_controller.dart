import 'dart:developer';

import 'package:college_shopify/db_helper/mongodb.dart';
import 'package:college_shopify/widgets/snackbar_text.dart';
import 'package:get/get.dart';

class NewEntryController extends GetxController {
  final Rx<Map<String, dynamic>> user = Rx<Map<String, dynamic>>({});

  bool isDisplayDataLoading = true;
  Map<String, dynamic>? result = {};

  Future<Map<String, dynamic>?> displayData(var userId) async {
    try {
      result = await MongoDatabase.fetchUserData(userId);
      log("FETCH USER RES " + result.toString());
      isDisplayDataLoading = false;
      update();
      return result;
    } catch (e) {
      log(e.toString());
      showSnackBar("Error occurred", e.toString());
      isDisplayDataLoading = false;
      update();
      return result;
    }
  }
}
