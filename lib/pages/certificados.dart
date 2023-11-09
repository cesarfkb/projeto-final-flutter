import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/utils/certificados_cards.dart';
import 'package:portfolio_teste/widgets/appbar_secao.dart';

class Certificados extends StatelessWidget {
  const Certificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppbarSecao(titulo: "Certificados")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            clipBehavior: Clip.hardEdge,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: constraints.maxWidth > mobile ? 0 : 16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: certificados.length,
            itemBuilder: (context, index) {
              return certificados[index];
            },
          );
        },
      ),
    );
  }
}
