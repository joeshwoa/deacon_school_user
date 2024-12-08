import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PointCardCustom extends StatelessWidget {
  const PointCardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorData.secondaryBackgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: ColorData.primaryBorderColor,
              width: 1
          )
      ),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorData.success25Color,
              border: Border.all(color: ColorData.success50Color)
            ),
            clipBehavior: Clip.antiAlias,
            child: Center(
              child: Text(
                '1',
                textDirection: TextDirection.rtl,
                style: StyleData.textStyleSuccessTextColorB30,
              ),
            ),
          ),
          const Gap(10),
          Text(
            'حضور',
            textDirection: TextDirection.rtl,
            style: StyleData.textStyleBlackTextColorSB20,
          ),
          Spacer(),
          Text(
            '15-11-2024',
            textDirection: TextDirection.rtl,
            style: StyleData.textStyleBlackTextColorSB16,
          ),
        ],
      ),
    );
  }
}