import 'package:flutter/material.dart';
import 'package:portfolio_teste/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: HomePage(),
    );
  }
}
