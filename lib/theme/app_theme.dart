import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary=Colors.indigo;
  //Estamos copiando desde el theme light por defecto
  //y agregandole nuestras propias props
  //util para definir mis temas
  static final ThemeData lightTheme= ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation:5,
      shadowColor: primary,
    ),
    iconTheme:const IconThemeData(
      color: primary
    ),
    textButtonTheme:TextButtonThemeData(
      style:TextButton.styleFrom(foregroundColor:primary)
    ),

    floatingActionButtonTheme:const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )
  );
}