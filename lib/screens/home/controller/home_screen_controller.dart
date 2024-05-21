import 'package:get/get.dart';
import '../models/home_screen_model.dart';

class HomeScreenController extends GetxController {
  Rx<HomeScreenModel> homeScreenModelObj = HomeScreenModel().obs;
}
