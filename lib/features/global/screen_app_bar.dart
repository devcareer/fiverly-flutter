
import 'package:flutter/material.dart';

import 'app_color.dart';

AppBar screenAppBar({Widget screenTitle,screenIcon}) {
  return AppBar(
    title: screenTitle,
    leading: screenIcon,
    centerTitle: true,
    backgroundColor: AppColor.backgroundColor,
  );
}
