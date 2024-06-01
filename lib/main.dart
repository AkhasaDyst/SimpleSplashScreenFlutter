import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_pager_flutter/screen/GettingStarted.dart';
import 'package:slide_pager_flutter/screen/LoginScreen.dart';
import 'package:slide_pager_flutter/screen/RegisterScreen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Gettingstarted(),
      routes: {
        Loginscreen.routeName: (ctx) => Loginscreen(),
        Registerscreen.routeName: (ctx) => Registerscreen(),
      },
    );
  }
}

