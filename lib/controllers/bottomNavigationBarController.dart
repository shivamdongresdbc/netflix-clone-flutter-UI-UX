import 'package:get/get.dart';

class BNBController extends GetxController {
  RxInt curruntIndex = 0.obs;

  void changeIndex(int val) {
    curruntIndex.value = val;
    update();
  }
}
