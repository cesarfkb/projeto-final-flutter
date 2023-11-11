import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_teste/widgets/appbar_comum.dart';
import 'package:portfolio_teste/widgets/projetos_items.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppbarComum(titulo: "Projetos")),
      body: Align(
        alignment: Alignment.center,
        child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              projetos[0],
              projetos[1],
              projetos[2],
              projetos[3],
            ]),
      ),
    );
  }
}
