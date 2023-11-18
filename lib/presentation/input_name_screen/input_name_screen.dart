import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';
import 'package:sleep_demo/widgets/custom_floating_text_field.dart';
import 'package:sleep_demo/widgets/custom_text_form_field.dart';

class InputNameScreen extends StatelessWidget {
  InputNameScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController textFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: Container(
              width: 360.h,
              padding: EdgeInsets.symmetric(
                horizontal: 67.h,
                vertical: 196.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    height: 120.adaptSize,
                    width: 120.adaptSize,
                    margin: EdgeInsets.only(left: 49.h),
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
                          margin: EdgeInsets.only(left: 100.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_t_n_b_n_l_g".tr,
                      style: CustomTextStyles.bodyMediumAlikeWhiteA700,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 1.h,
                    ),
                    child: CustomFloatingTextField(
                      controller: nameController,
                      labelText: "lbl_name".tr,
                      labelStyle: CustomTextStyles.bodyLargeRobotoWhiteA700,
                      hintText: "lbl_name".tr,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomTextFormField(
                      controller: textFieldController,
                      hintText: "lbl_age".tr,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
