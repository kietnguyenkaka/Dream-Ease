import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/custom_text_form_field.dart';

class SuggestScreen extends StatelessWidget {
  SuggestScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black90002,
        resizeToAvoidBottomInset: false,
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
              horizontal: 9.h,
              vertical: 59.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 153.v,
                    width: 120.h,
                    margin: EdgeInsets.only(left: 102.h),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            child: Stack(
                              alignment: Alignment.centerRight,
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
                                  alignment: Alignment.centerRight,
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
                ),
                SizedBox(height: 23.v),
                _buildAverageSleepTime(context),
                SizedBox(height: 34.v),
                _buildThree(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageSleepTime(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Container(
        width: 249.h,
        margin: EdgeInsets.only(right: 8.h),
        child: Text(
          "msg_b_n_thu_c_tu_i".tr,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodyMedium14,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 258.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 3.h,
            ),
            child: Text(
              "msg_h_y_nh_p_th_i_gian".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
          SizedBox(height: 13.v),
          CustomTextFormField(
            controller: textFieldController,
            hintText: "lbl_hour".tr,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
