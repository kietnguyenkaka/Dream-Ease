import '../th_ng_b_o_page/widgets/th_ngb_o_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';

class ThNgBOPage extends StatelessWidget {
  const ThNgBOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillBlack,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 33.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 7.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 113.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBell24Outline,
                                        height: 30.v,
                                        width: 31.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, bottom: 8.v),
                                        child: Text("lbl_th_ng_b_o".tr,
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                          SizedBox(height: 78.v),
                          _buildThngBo(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildThngBo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 17.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ThNgbOItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
