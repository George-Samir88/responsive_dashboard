import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              'This is title text',
              style: TextStyle(
                fontSize:
                    getResponsiveFontSize(baseFontSize: 20, context: context),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'This is body text , it should be responsive to screen size',
              style: TextStyle(
                fontSize:
                    getResponsiveFontSize(baseFontSize: 16, context: context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//scale factor
//responsive font size
//min , max size
double getResponsiveFontSize(
    {required double baseFontSize, required BuildContext context}) {
  double scaleFactor = getScaleFactor(context: context);
  double responsiveFontSize = scaleFactor * baseFontSize;
  //min size is equal to 80% of its
  double lowerLimit = baseFontSize * 0.8;
  //max size is equal to 120% of its
  double upperLimit = baseFontSize * 1.2;
  //clamp controls the limit of size from and to
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({required BuildContext context}) {
  //factor from 0 to 600
  //factor from 601 to 900
  //factor from 1000 to infinity
  double screenSize = MediaQuery.sizeOf(context).width;
  if (screenSize < 600) {
    return (screenSize / 400);
  } else if (screenSize < 900) {
    return (screenSize / 700);
  } else {
    return (screenSize / 1000);
  }
}
