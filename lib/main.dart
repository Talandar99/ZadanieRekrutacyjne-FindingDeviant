import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rekrutacja/view_model/provider.dart';
import 'package:rekrutacja/view/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => InOutProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rekrutacja",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}
