import 'package:deacon_school_user/Core/cubit/layout_cubit.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:deacon_school_user/Core/widget/point_card_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.33,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: ColorData.primaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                color: ColorData.whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Gap(10),
                  Expanded(
                    flex: 2,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 20,
                            startAngle: 90,
                            endAngle: 90,
                            showTicks: false,
                            showAxisLine: false,
                            isInversed: false,
                            showLabels: false,
                            radiusFactor: 0.92,
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 8,
                                width: 10,
                                animationDuration: 600,
                                animationType: AnimationType.linear,
                                enableAnimation: true,
                                pointerOffset: -3,
                                cornerStyle: CornerStyle.bothCurve,
                                color: ColorData.primaryColor,
                              ),
                            ],
                            interval: 1,
                          ),
                          RadialAxis(
                            minimum: 0,
                            maximum: 20,
                            startAngle: 90,
                            endAngle: 90,
                            showTicks: false,
                            showAxisLine: false,
                            isInversed: false,
                            showLabels: false,
                            radiusFactor: 0.8,
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 12,
                                width: 9,
                                animationDuration: 600,
                                animationType: AnimationType.linear,
                                enableAnimation: true,
                                pointerOffset: -3,
                                cornerStyle: CornerStyle.bothCurve,
                                color: ColorData.primary80Color,
                              ),
                            ],
                            interval: 1,
                          ),
                          RadialAxis(
                            minimum: 0,
                            maximum: 20,
                            startAngle: 90,
                            endAngle: 90,
                            showTicks: false,
                            showAxisLine: false,
                            isInversed: false,
                            showLabels: false,
                            radiusFactor: 0.68,
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 6,
                                width: 8,
                                animationDuration: 600,
                                animationType: AnimationType.linear,
                                enableAnimation: true,
                                pointerOffset: -3,
                                cornerStyle: CornerStyle.bothCurve,
                                color: ColorData.primary60Color,
                              ),
                            ],
                            interval: 1,
                          ),
                          RadialAxis(
                            minimum: 0,
                            maximum: 20,
                            startAngle: 90,
                            endAngle: 90,
                            showTicks: false,
                            showAxisLine: false,
                            isInversed: false,
                            showLabels: false,
                            radiusFactor: 0.56,
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 20,
                                width: 7,
                                animationDuration: 600,
                                animationType: AnimationType.linear,
                                enableAnimation: true,
                                pointerOffset: -3,
                                cornerStyle: CornerStyle.bothCurve,
                                color: ColorData.primary40Color,
                              ),
                            ],
                            interval: 1,
                          ),
                          RadialAxis(
                            minimum: 0,
                            maximum: 20,
                            startAngle: 90,
                            endAngle: 90,
                            showTicks: false,
                            showAxisLine: false,
                            isInversed: false,
                            showLabels: false,
                            radiusFactor: 0.44,
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 5,
                                width: 6,
                                animationDuration: 600,
                                animationType: AnimationType.linear,
                                enableAnimation: true,
                                pointerOffset: -3,
                                cornerStyle: CornerStyle.bothCurve,
                                color: ColorData.primary20Color,
                              ),
                            ],
                            interval: 1,
                          ),
                        ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorData.primaryColor,
                              ),
                            ),
                            Gap(8),
                            Text(
                              'حضور',
                              style: StyleData.textStyleBlackTextColorM20,
                            ),
                            Spacer(),
                            Text(
                              '8',
                              style: StyleData.textStyleBlackTextColorSB16,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorData.primary80Color,
                              ),
                            ),
                            Gap(8),
                            Text(
                              'اجبية',
                              style: StyleData.textStyleBlackTextColorM20,
                            ),
                            Spacer(),
                            Text(
                              '12',
                              style: StyleData.textStyleBlackTextColorSB16,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorData.primary60Color,
                              ),
                            ),
                            Gap(8),
                            Text(
                              'ألحان',
                              style: StyleData.textStyleBlackTextColorM20,
                            ),
                            Spacer(),
                            Text(
                              '6',
                              style: StyleData.textStyleBlackTextColorSB16,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorData.primary40Color,
                              ),
                            ),
                            Gap(8),
                            Text(
                              'طقس',
                              style: StyleData.textStyleBlackTextColorM20,
                            ),
                            Spacer(),
                            Text(
                              '20',
                              style: StyleData.textStyleBlackTextColorSB16,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorData.primary20Color,
                              ),
                            ),
                            Gap(8),
                            Text(
                              'قداس و تسبحه',
                              style: StyleData.textStyleBlackTextColorM16,
                            ),
                            Spacer(),
                            Text(
                              '5',
                              style: StyleData.textStyleBlackTextColorSB16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                ],
              ),
            ),
          ),
        ).animate().slideY(duration: 600.ms),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'النقاط',
            textDirection: TextDirection.rtl,
            style: StyleData.textStyleBlackTextColorSB30,
          ),
        ),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
        PointCardCustom(),
      ],
    );
  }
}
