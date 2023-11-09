import 'package:flutter/material.dart';

class CertificadosCards extends StatelessWidget {
  final String titulo, descricao, urlImagem;
  const CertificadosCards(
      {super.key,
      required this.titulo,
      required this.descricao,
      required this.urlImagem});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 4,
                offset: const Offset(4, 5))
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
            child: Column(
          children: [
            Image.network(urlImagem, fit: BoxFit.scaleDown),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(titulo,
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold)),
                Text(descricao, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ],
        )));
  }
}

const String imgUrl = "https://placehold.co/1920x1080/png";
const String titulo = "Titulo";
const String descricao = "Descrição";

const certificados = [
  CertificadosCards(titulo: titulo, descricao: descricao, urlImagem: imgUrl),
  CertificadosCards(titulo: titulo, descricao: descricao, urlImagem: imgUrl),
  CertificadosCards(titulo: titulo, descricao: descricao, urlImagem: imgUrl),
];
