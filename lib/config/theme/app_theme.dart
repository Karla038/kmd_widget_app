import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pinkAccent,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.deepPurpleAccent
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    required this.selectedColor
    }): assert (
      selectedColor >= 0, 'Selecciona un color mayor a 0 '
    ),
    assert (
      selectedColor < colorList.length,
      'El color seleccionado debe ser menor ${ colorList.length -1}'
    );

    ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false
      )
    );

}