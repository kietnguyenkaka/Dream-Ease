import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:sleep_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:sleep_demo/widgets/custom_bottom_bar.dart';
import 'package:sleep_demo/widgets/custom_rating_bar.dart';
import 'package:sleep_demo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FeedbacksScreen extends StatelessWidget {
  FeedbacksScreen({Key? key}) : super(key: key);

  TextEditingController thirtyFourController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildEdit(context),
                  SizedBox(height: 12.v),
                  _buildDescription(context),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h, right: 18.h),
                      child: CustomTextFormField(
                          controller: thirtyFourController,
                          hintText: "msg_h_y_vi_t_nh_ng_g_p".tr,
                          hintStyle: CustomTextStyles.bodyMedium14,
                          textInputAction: TextInputAction.done,
                          maxLines: 9,
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          filled: true,
                          fillColor: appTheme.gray90002)),
                  SizedBox(height: 47.v),
                  Container(
                      height: 92.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray90003))
                ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(26.h, 16.v, 325.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildEdit(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEdit, height: 25.v, width: 26.h),
          Padding(
              padding: EdgeInsets.only(left: 19.h, bottom: 3.v),
              child: Text("msg_vi_t_feedbacks_cho".tr,
                  style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            height: 390.v,
            width: 319.h,
            margin: EdgeInsets.only(left: 20.h),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                      width: 293.h,
                      child: Text("msg_xin_ch_o_ch_ng".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 20.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                            height: 30.v,
                            width: 287.h,
                            decoration:
                                BoxDecoration(color: appTheme.black900)),
                        SizedBox(height: 13.v),
                        Text("msg_h_y_nh_gi_ch_ng".tr,
                            style: CustomTextStyles.titleLargeRobotoWhiteA700),
                        SizedBox(height: 7.v),
                        Container(
                            width: 278.h,
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            child: Text("msg_ch_ng_m_nh_v_n_ang".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleMediumRobotoBluegray700
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 7.v),
                        CustomRatingBar(initialRating: 0, itemSize: 44),
                        SizedBox(height: 10.v)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
