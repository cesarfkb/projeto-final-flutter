import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/widgets/cartao.dart';
import 'package:portfolio_teste/widgets/list_view_creator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth > mobile) {
          return Scaffold(
            body: Center(
                child: SizedBox(
              child: ListViewCreator(
                isVertical: false,
                cartoes: cards,
              ),
            )),
          );
        } else {
          return Scaffold(
            body: Center(
                child: SizedBox(
              child: ListViewCreator(
                isVertical: true,
                cartoes: cards,
              ),
            )),
          );
        }
      },
    );
  }
}
