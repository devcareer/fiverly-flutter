import 'package:fixing/features/global/app_color.dart';
import 'package:flutter/material.dart';

AppBar screenAppBar({Widget screenTitle,screenIcon}) {
  return AppBar(
    title: screenTitle,
    leading: screenIcon,
    centerTitle: true,
    backgroundColor: AppColor.backgroundColor,
  );
}
