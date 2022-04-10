import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xff5D9CEC);
  static Color blackColor = Color(0xff363636);
  static Color grayColor = Color(0xffC8C9CB);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color backgroundColor= Color(0xffdfecdb);
  // static Color darkPrimary = Color(0xff141A2E);
  // static Color darkYellow = Color(0xffFACC1D);

  // static final ThemeData darkTheme = ThemeData(
  //     primaryColor: darkPrimary,
  //     colorScheme: ColorScheme(
  //         secondary: darkYellow,
  //         surface: Colors.white,
  //         onBackground: darkYellow,
  //         brightness: Brightness.dark,
  //         onSurface: blackColor,
  //         onError: Colors.white,
  //         onSecondary: Colors.white,
  //         background: Colors.white,
  //         error: Colors.red,
  //         primary: darkPrimary,
  //         onPrimary: darkYellow),
  //     scaffoldBackgroundColor: Colors.transparent,
  //     appBarTheme: AppBarTheme(
  //         color: Colors.transparent,
  //         shadowColor: Colors.transparent,
  //         iconTheme: IconThemeData(color: blackColor)),
  //     textTheme: TextTheme(
  //       headline1: TextStyle(
  //         fontSize: 30,
  //         color: Colors.white,
  //         fontWeight: FontWeight.w700,
  //       ),
  //       subtitle1: TextStyle(
  //         fontSize: 25,
  //         color: blackColor,
  //         fontWeight: FontWeight.w400,
  //       ),
  //     ),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //       selectedItemColor: darkYellow,
  //       unselectedItemColor: Colors.white,
  //     ),
  //     bottomSheetTheme: BottomSheetThemeData(
  //       backgroundColor: darkPrimary,
  //     ));

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
          secondary: greenColor,
          surface: lightPrimary,
          onBackground: grayColor,
          brightness: Brightness.light,
          onSurface: blackColor,
          onError: Colors.white,
          onSecondary: Colors.white,
          background: grayColor,
          error: Colors.red,
          primary: lightPrimary,
          onPrimary: Colors.white),
      scaffoldBackgroundColor:backgroundColor,
      // appBarTheme: AppBarTheme(
      //     color: Colors.transparent,
      //     shadowColor: Colors.transparent,
      //     iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 22,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize:18,
          color: blackColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle2: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        )
      ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightPrimary
    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: lightPrimary,
        unselectedItemColor: grayColor,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    )
  );
}
