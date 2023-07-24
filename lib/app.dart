import 'package:flutter/material.dart';
import 'package:video_app/screens/main_screen.dart';
import 'package:video_app/style/theme.dart' as Style;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      theme: ThemeData.dark().copyWith(
          textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: 'Nunito',
              ),
          primaryTextTheme:
              ThemeData.dark().textTheme.apply(fontFamily: 'Nunito'),
          scaffoldBackgroundColor: Style.Colors.scaffoldDarkBack,
          primaryColorBrightness: Brightness.dark,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black,
              selectedItemColor: Style.Colors.mainColor,
              selectedIconTheme: IconThemeData(color: Style.Colors.mainColor),
              unselectedIconTheme: IconThemeData(color: Colors.white))),
      home: MainScreen(),
    );
  }
}
