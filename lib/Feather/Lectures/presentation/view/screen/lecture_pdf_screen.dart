import 'package:deacon_school_user/Core/helper/loading_app_custom.dart';
import 'package:deacon_school_user/Core/unit/app_routes.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LecturePDFScreen extends StatelessWidget {
  const LecturePDFScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorData.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorData.whiteColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: ColorData.primaryColor),
            onPressed: () {
              context.pop();
            },
          ),
          title: Text(
            'بصالتس',
            textDirection: TextDirection.rtl,
            style: StyleData.textStyleBlackTextColorSB22,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {
                  // TODO: download audio and pdf
                },
                child: Container(
                  height: 35,
                  width: 35,
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
                    Icons.download_rounded,
                    size: 22,
                  ),
                ),
              ),
            ),
          ],

        ),
        body: PDF(
          enableSwipe: true,
          swipeHorizontal: false,
          autoSpacing: false,
          pageFling: false,
          onError: (error) {
            print(error.toString());
          },
          onPageError: (page, error) {
            print('$page: ${error.toString()}');
          },
          onPageChanged: (page, total) {
            print('page change: $page/$total');
          },
        ).cachedFromUrl(
          'https://gbihr.org/images/docs/test.pdf',
          placeholder: (progress) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: LoadingAppCustom()),
              Gap(10),
              Center(child: Text('$progress %', style: StyleData.textStyleBlackTextColorB24,)),
            ],
          ),
          errorWidget: (error) => Center(child: Icon(Icons.broken_image_rounded, size: 65, color: ColorData.dangerColor,)),
        ),
      ),
    );
  }
}
