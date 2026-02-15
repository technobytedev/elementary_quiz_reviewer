import 'package:flutter/material.dart';
import 'screens/main_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLoC Pattern Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}
