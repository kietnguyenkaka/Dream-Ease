import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/presentation/home_page/home_page.dart';
import 'package:sleep_demo/presentation/music_page/music_page.dart';
import 'package:sleep_demo/presentation/th_ng_b_o_page/th_ng_b_o_page.dart';
import 'package:sleep_demo/presentation/tracking_gi_c_ng_page/tracking_gi_c_ng_page.dart';
import 'package:sleep_demo/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TrackingGiCNgContainerScreen extends StatelessWidget {
  TrackingGiCNgContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.trackingGiCNgPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.trackingGiCNgPage:
        return TrackingGiCNgPage();
      case AppRoutes.musicPage:
        return MusicPage();
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.thNgBOPage:
        return ThNgBOPage();
      default:
        return TrackingGiCNgPage();
    }
  }
}
