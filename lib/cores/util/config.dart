import 'package:flutter/cupertino.dart';

class Config {
  static double yMargin(BuildContext context, {double height}) {
    final size = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewHeight = isPotrait
        ? MediaQuery.of(context).size.height
        : MediaQuery.of(context).size.width;

    return viewHeight * (height / 100);
  }

  static double xMargin(BuildContext context, {double width}) {
    final size = MediaQuery.of(context).size;

    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewWidth = isPotrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width;
    // viewWidth = viewWidth > 750 ? 750: viewWidth
    return viewWidth * (width / 100);
  }

  static double textSize(BuildContext context, double textSize) {
    final size = MediaQuery.of(context).size;
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    double viewWidth = isPotrait ? size.width : size.height;
    return viewWidth * (textSize / 100);
  }

  static bool condition(BuildContext context) {
    var isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return isPotrait;
  }
}
