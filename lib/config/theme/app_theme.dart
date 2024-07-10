import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pinkAccent,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.deepPurpleAccent,
  Colors.greenAccent

];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
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