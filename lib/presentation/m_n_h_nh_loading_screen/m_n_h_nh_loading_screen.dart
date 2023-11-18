import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/custom_elevated_button.dart';

class MNHNhLoadingScreen extends StatelessWidget {
  const MNHNhLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgMNHNhLoading),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 78.v),
                      SizedBox(
                          height: 734.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 285.v),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_your".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRubikBlack90002),
                                              TextSpan(
                                                  text: "lbl_sleep".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRubikPurple90001),
                                              TextSpan(
                                                  text: "msg_makes_you_stronger"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRubikBlack90002)
                                            ]),
                                            textAlign: TextAlign.left))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28.h, vertical: 79.v),
                                        decoration: AppDecoration.fillIndigo
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 19.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 16.h),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "lbl_c_ng_c_i_thi_n"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .titleLargeBeVietnamProBlack90002),
                                                        TextSpan(text: " "),
                                                        TextSpan(
                                                            text: "lbl_gi_c_ng"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleLargeBeVietnamProPurple90001),
                                                        TextSpan(
                                                            text: "lbl".tr,
                                                            style: CustomTextStyles
                                                                .titleLargeRubikPurple90001),
                                                        TextSpan(
                                                            text: "    ".tr)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              SizedBox(height: 48.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "msg_h_y_ng_th_t_ngon".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeRubikBlack90002)),
                                              SizedBox(height: 42.v),
                                              CustomElevatedButton(
                                                  height: 64.v,
                                                  width: 180.h,
                                                  text: "msg_let_s_get_started"
                                                      .tr,
                                                  rightIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 7.h),
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFilter,
                                                          height: 18.adaptSize,
                                                          width: 18.adaptSize)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlinePurpleD,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallRubikWhiteA700,
                                                  onPressed: () {
                                                    onTapLetsGetStarted(
                                                        context);
                                                  },
                                                  alignment: Alignment.center)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: 401.v,
                                    width: 374.h,
                                    alignment: Alignment.topCenter),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage8,
                                    height: 46.v,
                                    width: 44.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                        left: 50.h, bottom: 285.v))
                              ]))
                    ])))));
  }

  /// Navigates to the inputNameScreen when the action is triggered.
  onTapLetsGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inputNameScreen);
  }
}
