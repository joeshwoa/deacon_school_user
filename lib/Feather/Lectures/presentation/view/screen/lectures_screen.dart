import 'package:deacon_school_user/Core/helper/cache_image.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:deacon_school_user/Core/unit/unit.dart';
import 'package:deacon_school_user/Core/widget/church_melody_card_custom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      children: [
        Text(
          'الحان الكنيسة',
          textDirection: TextDirection.rtl,
          style: StyleData.textStyleBlackTextColorSB30,
        ),
        const Gap(10),
        SizedBox(
          height: 255,
          child: Stack(
            children: [
              Container(
                height: 220,
                width: Unit(context).getWidthSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24)
                ),
                clipBehavior: Clip.antiAlias,
                child: CacheImageCustom(image: 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjwI6DjW5fE3XCCphxkfgmX9w1erwnYoPx8lSqUmP0VcCUXnoZAyoseaNXR-u5_3BUn__zuMeZ0so82rQjVI2EEFHUNioE4HoB8Bio1K8ONYguOdmumnNwiS-DXOwCDZApMwdRfAgnM_gBu/s1600/1902765_584695021615038_852258775_n.jpg',),
              ),
              Positioned(
                top: 185,
                right: 40,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                    border: Border.all(
                      color: ColorData.whiteColor,
                      width: 5
                    )
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                      child: CacheImageCustom(image: 'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1725614724~exp=1725615324~hmac=a601f37153a4854da459f2df696226908a4c860a2cffc29a9307c511400c88cc',),
                  ),

                ),
              )
            ],
          ),
        ),
        const Gap(8),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
        ChurchMelodyCardCustom(),
      ],
    );
  }
}
