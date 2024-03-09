import 'package:flutter/material.dart';

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
