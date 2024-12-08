import 'package:deacon_school_user/Core/cubit/layout_cubit.dart';
import 'package:deacon_school_user/Core/helper/cache_image.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AppBarCustom extends StatelessWidget {
  AppBarCustom({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.read<LayoutCubit>().selectedPageIndex == 1 ? ColorData.primaryColor : ColorData.whiteColor,
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle
            ),
            clipBehavior: Clip.antiAlias,
            child: CacheImageCustom(image: 'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1725614724~exp=1725615324~hmac=a601f37153a4854da459f2df696226908a4c860a2cffc29a9307c511400c88cc',),
          ),
          const Gap(10),
          Text(
            'بافلي ايمن',
            textDirection: TextDirection.rtl,
            style: context.read<LayoutCubit>().selectedPageIndex == 1 ? StyleData.textStyleWhiteTextColorSB30 : StyleData.textStyleBlackTextColorSB30,
          ),
          Expanded(child: SizedBox()),
          if(context.read<LayoutCubit>().selectedPageIndex == 0)GestureDetector(
            onTap: () {
              context.read<LayoutCubit>().toggleSearchBox();
            },
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  color: ColorData.secondaryBackgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: ColorData.primaryBorderColor,
                      width: 1
                  )
              ),
              clipBehavior: Clip.antiAlias,
              child: Icon(
                Icons.search_rounded,
                size: 22,
              ),
            ),
          ),
          const Gap(8),
          GestureDetector(
            onTap: () {
              context.read<LayoutCubit>().toggleNotificationsBox();
            },
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  color: context.read<LayoutCubit>().selectedPageIndex == 1 ? ColorData.primaryColor : ColorData.secondaryBackgroundColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: ColorData.primaryBorderColor,
                      width: 1
                  )
              ),
              clipBehavior: Clip.antiAlias,
              child: Icon(
                Icons.notifications_rounded,
                color: context.read<LayoutCubit>().selectedPageIndex == 1 ? ColorData.whiteColor : null,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
