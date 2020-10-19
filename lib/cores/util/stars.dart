import 'dart:math';

import 'package:fiverly_flutter/cores/util/config.dart';
import 'package:flutter/material.dart';

int numberInitialize = 1;
int increment = 0;
Icon icons(int rating, int rated, BuildContext context) => Icon(Icons.star,
    color: rating < rated ? Colors.amber : Colors.black12,
    size: Config.textSize(context, 5));

Icon iconsRand(int rating, BuildContext context) {
  Random rand = Random();
  if (increment == 0) {
    numberInitialize = rand.nextInt(5) + 1;
  }
  increment++;
  if (increment == 5) {
    numberInitialize = 0;
    increment = 0;
  }
  final rated = numberInitialize;
  print(rated);
  return Icon(Icons.star,
      color: rating < rated ? Colors.amber : Colors.black12,
      size: Config.textSize(context, 5));
}
