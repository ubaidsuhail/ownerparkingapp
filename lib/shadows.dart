/*
*  shadows.dart
*  OWNERP$U
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(26, 0, 0, 0),
    offset: Offset(0, 10),
    blurRadius: 30,
  );
  static const BoxShadow secondaryShadow = BoxShadow(
    color: Color.fromARGB(51, 222, 224, 226),
    offset: Offset(0, 2),
    blurRadius: 20,
  );
}