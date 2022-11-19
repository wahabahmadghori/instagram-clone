import 'package:flutter/material.dart';
import 'package:intagram_clone/features/presentation/pages/main_screen/main_screen.dart';

import 'on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intagram Clone',
      theme: ThemeData.dark(),
      onGenerateRoute: OnGeneratorRoute.route,
      initialRoute: '/',
      routes: {
        "/": (context) => MainScreen(),
      },
    );
  }
}
