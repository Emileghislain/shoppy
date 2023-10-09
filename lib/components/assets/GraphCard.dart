import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphCard extends StatelessWidget{


  GraphCard({Key? key}):super(key: key);
  List<_SalesData> data = [
    _SalesData('Jan', 0),
    _SalesData('Feb', 1),
    _SalesData('Mar', 2),
    _SalesData('Apr', 3),
    _SalesData('May', 4),
    _SalesData('May', 5)
  ];
  List<double> sparkChartData = <double>[
      10, 6, 8, -5, 11, 5, -2, 7, -3, 6, 8, 10
    ];
  @override 
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.9,
      height: 220,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(9, 58, 76, .7),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          SfSparkLineChart(
            data: sparkChartData,
          ),
          /* Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              //Initialize the spark charts widget
              child: SfSparkLineChart.custom(
                //Enable the trackball
                trackball: SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
            ),
          ) */
        ]),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
