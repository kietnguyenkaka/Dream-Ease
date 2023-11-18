import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';

class SuggestOneScreen extends StatelessWidget {
  const SuggestOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black90002,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.black90002,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgMNHNhLoading,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 360.h,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 59.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 153.v,
                  width: 120.h,
                  margin: EdgeInsets.only(left: 104.h),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 120.adaptSize,
                          width: 120.adaptSize,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle7,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(
                                  40.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatars3dAvatar24,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: Text(
                            "lbl_thuan".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.v),
                _buildTwentySix(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              "msg_h_y_nh_gi_gi_c".tr,
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
          SizedBox(height: 18.v),
          Container(
            height: 56.v,
            width: 262.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              border: Border.all(
                color: appTheme.whiteA700,
                width: 1.h,
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
