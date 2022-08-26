import 'package:first_web/constants/controllers.dart';
import 'package:first_web/routing/router.dart';
import 'package:first_web/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
