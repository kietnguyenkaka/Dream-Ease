import 'package:flutter/material.dart';
import 'package:sleep_demo/core/app_export.dart';

// ignore: must_be_immutable
class DanhhiUItemWidget extends StatelessWidget {
  const DanhhiUItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.fillGray90001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 78.v,
            width: 64.h,
          ),
          SizedBox(height: 2.v),
          Text(
            "lbl_early_riser".tr,
            style: CustomTextStyles.labelLargeInter,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 137.h,
            child: Text(
              "msg_t_c_khi_b_n".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
