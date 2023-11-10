import 'package:flutter/material.dart';
import 'package:portfolio_teste/widgets/certificados_cards.dart';
import 'package:portfolio_teste/widgets/appbar_comum.dart';

class Certificados extends StatelessWidget {
  const Certificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppbarComum(titulo: "Certificados")),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                  maxHeight: 500,
                  minWidth: 400,
                  minHeight: 400,
                ),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: certificados[0]),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                  maxHeight: 500,
                  minWidth: 400,
                  minHeight: 400,
                ),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: certificados[1]),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                  maxHeight: 500,
                  minWidth: 400,
                  minHeight: 400,
                ),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: certificados[2]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
