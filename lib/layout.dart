import 'package:first_web/constants/style.dart';
import 'package:first_web/helpers/responsiveness.dart';
import 'package:first_web/routing/routes.dart';
import 'package:first_web/widgets/side_menu.dart';
import 'package:first_web/widgets/small_screen.dart';
import 'package:first_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import 'widgets/large_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: const Drawer(
        child: SideMenu(),
      ),
      appBar: topNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
