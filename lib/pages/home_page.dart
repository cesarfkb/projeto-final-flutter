import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/widgets/background.dart';
import 'package:portfolio_teste/widgets/home_page_items.dart';
import 'package:portfolio_teste/widgets/list_view_creator.dart';

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
              ListViewCreator(
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
