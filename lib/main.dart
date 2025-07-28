import 'package:flutter/material.dart';
import 'package:movie_app/pages/bottomnav.dart';
import 'package:movie_app/pages/details_page.dart';
import 'package:movie_app/pages/home_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: DetailsPage(),
    );
  }
}
