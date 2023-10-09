import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class CircleGraphCard extends StatelessWidget{

  CircleGraphCard({Key? key}):super(key: key);
  List<_PieData> data = [
    _PieData('Jan', 4),
    _PieData('Feb', 3),
    _PieData('Mar', 5),
  ];

  List<Color> color = [
    Color.fromARGB(102, 1, 42, 59),
    Color.fromARGB(153, 6, 144, 204),
    Color.fromARGB(204, 29, 56, 68),
  ];
  @override 
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          SfCircularChart(
            title: ChartTitle(
              alignment: ChartAlignment.near,
              text: 'Sales by sales person', 
              textStyle: TextStyle(color: Colors.white, fontFamily: "Montserrat", 
                fontSize: 16, fontWeight: FontWeight.w600)
            ),
            borderWidth: 2,
            legend: Legend(
              isVisible: true,
              alignment: ChartAlignment.far,
              position: LegendPosition.right
            ),
            palette: color,
            series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                explode: true,
                explodeIndex: 0,
                dataSource: data,
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
             //   dataLabelMapper: (_PieData data, _) => data.text,
                dataLabelSettings: DataLabelSettings(isVisible: true)
              ),
            ]
          )
        ]
      ),
    );
  }
}

class _PieData {
 _PieData(this.xData, this.yData);
 final String xData;
 final num yData;
}