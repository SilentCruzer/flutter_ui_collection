import 'package:fitness_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class KcalConsumed extends StatefulWidget {
  const KcalConsumed({Key? key}) : super(key: key);

  @override
  State<KcalConsumed> createState() => _KcalConsumedState();
}

class _KcalConsumedState extends State<KcalConsumed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: screenHeight * 0.2,
          decoration: new BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1254 Kcal",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ) ,),
                  SizedBox(height: 5,),
                  Text("Consumed",style: TextStyle(
                      fontSize: 12,
                    color: Colors.grey
                  ) ,)
                ],
              ),
              Container(
                width: screenWidth * 0.3,
                child: SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    showLabels: false,
                    showTicks: false,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.2,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Colors.orange.shade200,
                      thicknessUnit: GaugeSizeUnit.factor,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: 59,
                        cornerStyle: CornerStyle.bothCurve,
                        width: 0.2,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: Colors.orange,
                      )
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          positionFactor: 0.1,
                          angle: 90,
                          widget: Text(
                            "2100 Kcal",
                            style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500),
                          ))
                    ])
                ]),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2100 Kcal",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ) ,),
                  SizedBox(height: 5,),
                  Text("Remaining",style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ) ,)
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new LinearPercentIndicator(
              width: 75.0,
              leading: Icon(Icons.water),
              lineHeight: 8.0,
              percent: 0.2,
              barRadius: Radius.circular(10),
              progressColor: Colors.red,
            ),
            new LinearPercentIndicator(
              width: 75.0,
              leading: Icon(Icons.food_bank),
              lineHeight: 8.0,
              percent: 0.5,
              barRadius: Radius.circular(10),
              progressColor: Colors.orange,
            ),
            new LinearPercentIndicator(
              width: 75.0,
              leading: Icon(Icons.healing),
              lineHeight: 8.0,
              percent: 0.9,
              barRadius: Radius.circular(10),
              progressColor: Colors.blue,
            )
          ],
        )
      ],
    );
  }
}
