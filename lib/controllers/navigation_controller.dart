import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  Future<dynamic> navigateTo(String routeName) {
    if (navigatorKey.currentState == null) {
      return Future.error("Current navigator state is null");
    }
    final data = navigatorKey.currentState!.pushNamed(routeName);
    return data;
  }

  goBack() => navigatorKey.currentState?.pop();
}
