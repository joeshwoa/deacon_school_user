import 'package:deacon_school_user/Core/helper/cache_image.dart';
import 'package:deacon_school_user/Core/unit/app_routes.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      children: [
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 210,
              width: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
              ),
              clipBehavior: Clip.antiAlias,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: CacheImageCustom(image: 'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1725614724~exp=1725615324~hmac=a601f37153a4854da459f2df696226908a4c860a2cffc29a9307c511400c88cc',),
              ),

            ),
          ],
        ),
        Gap(20),
        TextField(
          controller: TextEditingController(text: 'بافلي ايمن'),
          enabled: false,
          style: StyleData.textStylePrimaryTextColorSB16,
          decoration: InputDecoration(
            labelText: 'الاسم',
            labelStyle: StyleData.textStylePrimary60TextColorSB16,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryLightColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primary60Color),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryColor),
            ),
          ),
        ),
        Gap(20),
        TextField(
          controller: TextEditingController(text: '01211899128'),
          enabled: false,
          style: StyleData.textStylePrimaryTextColorSB16,
          decoration: InputDecoration(
            labelText: 'رقم الهاتف',
            labelStyle: StyleData.textStylePrimary60TextColorSB16,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryLightColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primary60Color),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryColor),
            ),
          ),
        ),
        Gap(20),
        TextField(
          controller: TextEditingController(text: '01211899128'),
          enabled: false,
          style: StyleData.textStylePrimaryTextColorSB16,
          decoration: InputDecoration(
            labelText: 'رقم الهاتف ولي الامر',
            labelStyle: StyleData.textStylePrimary60TextColorSB16,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryLightColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primary60Color),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryColor),
            ),
          ),
        ),
        Gap(20),
        TextField(
          controller: TextEditingController(text: 'مستوي رابع'),
          enabled: false,
          style: StyleData.textStylePrimaryTextColorSB16,
          decoration: InputDecoration(
            labelText: 'المستوي',
            labelStyle: StyleData.textStylePrimary60TextColorSB16,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryLightColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primary60Color),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorData.primaryColor),
            ),
          ),
        ),
        Gap(20),
        GestureDetector(
          onTap: () {
            bool logout = true;
            if(logout) {
              context.go(AppRouter.kLoginView);
            }
          },
          child: Container(
            height: 56,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: ColorData.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                  'تسجيل خروج',
                  style: StyleData.textStyleDanger75TextColorM18
              ),
            ),
          ),
        ),
      ],
    );
  }
}
