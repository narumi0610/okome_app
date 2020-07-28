import 'dart:typed_data';

import 'package:flutter/material.dart';

class ExampleModel {
  // Scroll/Radio Picker Model
  var selectedRiceType = "はえぬき";
  List<String> riceType = <String>[
    'はえぬき',
    'つや姫',
    '玄米',
  ];

  // Checkbox Picker Model
  List<String> iceCreamToppings = <String>[
    'Hot Fudge',
    'Sprinkles',
    'Caramel',
    'Oreos',
    'Peanut Butter',
    'Cookie Dough',
    'Whipped Cream',
    'Marshmallow',
    'Nuts',
    'Heath Bar',
    'Butterscotch',
    "m&m's",
    "Coconut",
    "Gummy worms",
    "Fruit",
  ];
  List<String> selectedIceCreamToppings = <String>[
    'Hot Fudge',
    'Sprinkles',
  ];

  // Selection Picker Model
  List<String> speedOptions = <String>[
    'Light',
    'Ridiculous',
    'Ludicrous',
    'Plaid',
  ];
  String speed = 'Ludicrous';
  List<Icon> speedIcons = <Icon>[
    Icon(Icons.sort),
    Icon(Icons.clear_all),
    Icon(Icons.swap_calls),
    Icon(Icons.select_all),
  ];

  // Number Picker Model
  var age = 25;

  // Time Picker Model
  var time = TimeOfDay.now();

  // Date Picker Model
  var date = DateTime.now();

  // Color Picker Model
  Color color = Colors.red;

  // Palette Picker Model
  Color palette = Colors.green;

  // Swatch Picker Model
  Color swatch = Colors.blue;

  // File Picker Model
  Uint8List file = Uint8List(1024 * 1024 * 15);
}
