import 'package:flutter/material.dart';
import 'package:pet_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'loginScreen',
        routes: {
          'loginScreen': (_) => LoginScreen(),
          'mainScreen': (_) => MainScreen(),
          'profileScreen': (_) => ProfileScreen(),
        });
  }
}
