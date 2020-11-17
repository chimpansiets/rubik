import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class CubeInfo extends ChangeNotifier {
  var colorDict = <String, Color>{
    'w': Colors.white,
    'g': Colors.green,
    'r': Colors.red,
    'b': Colors.blue,
    'o': Colors.orange,
    'y': Colors.yellow,
  };

  var myCube = [
    [
      ['w', 'w', 'w'],
      ['w', 'w', 'w'],
      ['w', 'w', 'w'],
    ],
    [
      ['g', 'g', 'g'],
      ['g', 'g', 'g'],
      ['g', 'g', 'g'],
    ],
    [
      ['r', 'r', 'r'],
      ['r', 'r', 'r'],
      ['r', 'r', 'r'],
    ],
    [
      ['b', 'b', 'b'],
      ['b', 'b', 'b'],
      ['b', 'b', 'b'],
    ],
    [
      ['o', 'o', 'o'],
      ['o', 'o', 'o'],
      ['o', 'o', 'o'],
    ],
    [
      ['y', 'y', 'y'],
      ['y', 'y', 'y'],
      ['y', 'y', 'y'],
    ]
  ];

  processMove() {}
}
