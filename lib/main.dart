import 'package:flutter/material.dart';
import 'package:layout/style.dart';
import 'screens/home.dart';
import 'screens/LocationListingScreen.dart';


const LocationRoute = '/';
const LocationDetailRoute = '/home';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationRoute:
          screen = location();
          break;
        case LocationDetailRoute:
          screen = MaterialHome(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: AppBarTextStyle)
        ),
        textTheme: TextTheme(
            body1: Body1TextStyle,
            title: TitleTextStyle,
            caption: CaptionTextStyle,
            subtitle: SubtitleTextStyle
        ));

  }
}


