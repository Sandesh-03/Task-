import 'package:flutter/material.dart';

import 'FirstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme
        )
      ),
    home: const FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

