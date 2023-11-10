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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
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
        clipBehavior: Clip.antiAlias,
        child: InkWell(
            mouseCursor: SystemMouseCursors.click,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(urlImagem, fit: BoxFit.scaleDown),
                Expanded(
                  child: Text(titulo,
                      style: const TextStyle(
                          fontSize: 42, fontWeight: FontWeight.bold)),
                ),
                Expanded(
                    child:
                        Text(descricao, style: const TextStyle(fontSize: 26))),
              ],
            )),
      ),
    );
  }
}

const String imgUrl = "https://placehold.co/1920x1080/png";
const String titulo = "Titulo";
const String descricao = "Descrição";
const String linkCertificado = "url";

const certificados = [
  CertificadosCards(
      titulo: "Certificado 1",
      descricao: "Descricao certificado 1",
      urlImagem: imgUrl),
  CertificadosCards(
      titulo: "Certificado 2",
      descricao: "Descricao certificado 2",
      urlImagem: imgUrl),
  CertificadosCards(
      titulo: "Certificado 3",
      descricao: "Descricao certificado 3",
      urlImagem: imgUrl),
];
