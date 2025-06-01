import 'package:flutter/material.dart';

import 'screens/init_screen.dart';

void main() {
  runApp(const UebungMachtMeister());
}

class UebungMachtMeister extends StatelessWidget {
  const UebungMachtMeister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => InitScreen(),
        });
  }
}
