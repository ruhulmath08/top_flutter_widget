import 'package:flutter/material.dart';
import 'package:top_flutter_widget/routing/router.dart';
import 'package:top_flutter_widget/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Top 35 widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: generateRoute,
      home: const HomeScreen(title: 'Top 35 Flutter widget'),
    );
  }
}

//https://www.youtube.com/watch?v=M9J-JJOuyE0&t=737s
