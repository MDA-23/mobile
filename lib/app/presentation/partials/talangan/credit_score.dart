import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/routes/app_route.dart';
import 'package:mobile/styles/color_constants.dart';
import 'package:mobile/styles/text_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditScore extends StatelessWidget {
  const CreditScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Credit Score",
              style: body5BTextStyle(),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.creditScore);
              },
              child: Text(
                "Detail Score",
                style: body5TextStyle(
                  color: ColorConstants.primary[500],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: .8.sw,
          child: SfRadialGauge(
            axes: [
              RadialAxis(
                minimum: 0,
                maximum: 1000,
                labelOffset: 0,
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Healthy Score",
                          style: body5TextStyle(),
                        ),
                        Text(
                          "800",
                          style: h1BTextStyle(),
                        ),
                        Text(
                          "Excellent",
                          style: body4TextStyle(),
                        ),
                      ],
                    ),
                    positionFactor: 0.1,
                    angle: 90,
                  )
                ],
                pointers: <GaugePointer>[
                  MarkerPointer(value: 800, enableAnimation: true),
                ],
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 250,
                    color: Colors.red,
                    label: 'Bad',
                    endWidth: 40,
                    startWidth: 40,
                  ),
                  GaugeRange(
                    startValue: 250,
                    endValue: 500,
                    color: Colors.yellow,
                    label: 'Normal',
                    endWidth: 40,
                    startWidth: 40,
                  ),
                  GaugeRange(
                    startValue: 500,
                    endValue: 750,
                    color: Colors.green,
                    label: 'Good',
                    endWidth: 40,
                    startWidth: 40,
                  ),
                  GaugeRange(
                    startValue: 750,
                    endValue: 1000,
                    color: Colors.blue,
                    label: 'Excellent',
                    endWidth: 40,
                    startWidth: 40,
                  ),
                ],
                startAngle: 270,
                showLabels: false,
                showTicks: false,
                endAngle: 270,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
