import 'package:flutter/cupertino.dart';

class Config {
  static double yMargin(BuildContext context, {double height}) {
    final size = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewHeight = isPotrait ? size.height : size.width;
    // viewHeight = viewHeight > 1000 ? 1000 : viewHeight;
    return viewHeight * (height / 100);
  }

  static double xMargin(BuildContext context, {double width}) {
    final size = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewWidth = isPotrait ? size.width : size.height;
    // viewWidth = viewWidth > 750 ? 750: viewWidth
    return viewWidth * (width / 100);
  }

  static double textSize(BuildContext context, double textSize) {
    final size = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewWidth = isPotrait ? size.width : size.height;
    return viewWidth * (textSize / 100);
  }
}
