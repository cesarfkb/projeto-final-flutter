import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/widgets/home_page/home_page_builder.dart';
import 'package:portfolio_teste/widgets/home_page/home_page_items_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          return Stack(
            alignment: Alignment.center,
            children: [
              HomePageBuilder(
                isVertical: maxWidth > mobile,
                cartoes: homeItems,
              ),
            ],
          );
        },
      ),
    );
  }
}
