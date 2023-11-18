import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class KhiNVCCTipsScreen extends StatelessWidget {
  KhiNVCCTipsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 41.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 31.h),
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    SizedBox(height: 9.v),
                    _buildThIQuenXU(context),
                    SizedBox(height: 23.v),
                    Container(
                        width: 314.h,
                        margin: EdgeInsets.only(left: 31.h, right: 29.h),
                        child: Text("msg_c_gi_c_ng_t_t2".tr,
                            maxLines: 30,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumGray40001)),
                    SizedBox(height: 1.v),
                    _buildDarkXTabBar(context)
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildThIQuenXU(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 173.h,
                  margin: EdgeInsets.only(top: 1.v, bottom: 16.v),
                  child: Text("msg_4_th_i_quen_x_u".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles
                          .titleSmallOpenSansWhiteA700SemiBold)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 79.v,
                  width: 136.h,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 15.h))
            ]));
  }

  /// Section Widget
  Widget _buildDarkXTabBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 12.v),
        decoration: AppDecoration.fillBlueGray,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 44.v),
          CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapImgProfile(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
