import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:sleep_demo/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:sleep_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:sleep_demo/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                decoration: AppDecoration.fillBlack,
                child: Column(children: [
                  SizedBox(height: 40.v),
                  _buildFour(context),
                  SizedBox(height: 40.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("msg_h_y_ch_n_1_b_i_nh_c".tr,
                                style: CustomTextStyles
                                    .bodyLargeBeVietnamProWhiteA700))),
                    SizedBox(height: 16.v),
                    _buildHome(context),
                    SizedBox(height: 74.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text("msg_bi_u_gi_c_ng".tr,
                                style: theme.textTheme.titleMedium))),
                    SizedBox(height: 14.v),
                    _buildEightyEight(context),
                    SizedBox(height: 47.v),
                    _buildSegmentedControl(context),
                    SizedBox(height: 12.v),
                    _buildDarkXTabBar(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        width: 340.h,
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder24,
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup4), fit: BoxFit.cover)),
        child: CustomAppBar(
            height: 64.v,
            leadingWidth: 104.h,
            leading: Container(
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(left: 40.h),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle764x64,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      radius: BorderRadius.circular(32.h),
                      alignment: Alignment.center),
                  CustomImageView(
                      imagePath: ImageConstant.imgAvatars3dAvatar24,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      alignment: Alignment.center)
                ])),
            title: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(children: [
                  AppbarSubtitleFive(
                      text: "lbl_hi".tr, margin: EdgeInsets.only(right: 40.h)),
                  AppbarSubtitleTwo(text: "lbl_thuan".tr)
                ]))));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
        height: 120.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return HomeItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 45.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_100".tr,
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 18.v),
                        Text("lbl_90".tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 18.v),
                        Text("lbl_80".tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 17.v),
                        Text("lbl_70".tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 19.v),
                        Text("lbl_60".tr, style: theme.textTheme.bodySmall)
                      ])),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 6.h, top: 7.v),
                      child: Column(children: [
                        Container(
                            width: 320.h,
                            padding: EdgeInsets.symmetric(horizontal: 7.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup81),
                                    fit: BoxFit.cover)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      height: 72.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, top: 94.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.orange200,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(2.h)))),
                                  Spacer(flex: 17),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup14Copy,
                                      height: 38.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(top: 128.v)),
                                  Spacer(flex: 20),
                                  Container(
                                      height: 120.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(top: 46.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.orange200,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(2.h)))),
                                  Spacer(flex: 18),
                                  Container(
                                      height: 132.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(top: 34.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.orange200,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(2.h)))),
                                  Spacer(flex: 20),
                                  Container(
                                      height: 123.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(top: 43.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.orange200,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(2.h)))),
                                  Spacer(flex: 22),
                                  Container(
                                      height: 125.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(top: 41.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.orange200,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(2.h))))
                                ])),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("lbl_mon".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1),
                                  Padding(
                                      padding: EdgeInsets.only(left: 28.h),
                                      child: Text("lbl_tue".tr,
                                          style: CustomTextStyles
                                              .bodySmallWhiteA700_1)),
                                  Spacer(flex: 23),
                                  Text("lbl_wed".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1),
                                  Spacer(flex: 22),
                                  Text("lbl_fri".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1),
                                  Spacer(flex: 27),
                                  Text("lbl_sat".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1),
                                  Spacer(flex: 26),
                                  Text("lbl_sun".tr,
                                      style:
                                          CustomTextStyles.bodySmallWhiteA700_1)
                                ]))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildSegmentedControl(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h, right: 4.h),
        padding: EdgeInsets.all(2.h),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomElevatedButton(width: 89.h, text: "lbl_days".tr),
          GestureDetector(
              onTap: () {
                onTapTxtLabel(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 22.h, top: 11.v, bottom: 11.v),
                  child: Text("lbl_weeks".tr,
                      style: CustomTextStyles.bodyMediumInter))),
          Opacity(
              opacity: 0.3,
              child: Container(
                  height: 12.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 22.h, top: 14.v, bottom: 14.v),
                  decoration: BoxDecoration(
                      color: appTheme.indigo50.withOpacity(0.32),
                      borderRadius: BorderRadius.circular(1.h)))),
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 11.v, bottom: 11.v),
              child: Text("lbl_months".tr,
                  style: CustomTextStyles.bodyMediumInter)),
          Opacity(
              opacity: 0.3,
              child: Container(
                  height: 12.v,
                  width: 1.h,
                  margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 14.v),
                  decoration: BoxDecoration(
                      color: appTheme.indigo50.withOpacity(0.32),
                      borderRadius: BorderRadius.circular(1.h)))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 8.h, bottom: 11.v),
              child:
                  Text("lbl_all".tr, style: CustomTextStyles.bodyMediumInter))
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
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the homeoneScreen when the action is triggered.
  onTapTxtLabel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeoneScreen);
  }
}
