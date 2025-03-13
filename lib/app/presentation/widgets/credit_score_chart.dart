import 'package:flutter/material.dart';
import 'package:mobile/app/models/credit_score/credit_score_model.dart';
import 'package:mobile/styles/text_styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CreditScoreChart extends StatelessWidget {
  final CreditScoreModel data;
  const CreditScoreChart({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      data.score.toString(),
                      style: h1BTextStyle(),
                    ),
                    Text(
                      data.indicator,
                      style: body4TextStyle(),
                    ),
                  ],
                ),
                positionFactor: 0.1,
                angle: 90,
              )
            ],
            pointers: <GaugePointer>[
              MarkerPointer(
                value: data.score.toDouble(),
                enableAnimation: true,
              ),
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
    );
  }
}
