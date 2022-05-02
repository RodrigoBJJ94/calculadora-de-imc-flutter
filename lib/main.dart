import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF616161),
        scaffoldBackgroundColor: const Color(0xFF616161),
      ),
      home: const MainScreen(),
    );
  }
}
