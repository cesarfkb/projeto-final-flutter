import "dart:convert";
import "dart:io";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:portfolio_teste/pages/certificados.dart";
import "package:portfolio_teste/pages/sobre_mim.dart";

class Cartao {
  final String titulo, descricao, search;
  Function changePage;
  String urlImagem;
  Cartao({
    required this.titulo,
    required this.descricao,
    required this.search,
    required this.urlImagem,
    required this.changePage,
  });

  setImageURL(String search) async {
    final response = await http.get(
      Uri.parse('https://api.pexels.com/v1/search?query=$search&per_page=1'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader:
            'xW1wTYCzzpyHL4GBrtyOJ5O9s1tMmzFUTbk6COruWYZOJR7eEXCpmNRs',
      },
    );
    var data = json.decode(response.body);
    String url = data["photos"][0]["src"]["original"].toString();
    urlImagem = url;
  }
}

List<Cartao> cards = [
  Cartao(
      titulo: "Sobre mim",
      search: "Profile Picture",
      descricao: "Descrição sobre mim",
      urlImagem: "https://placehold.co/1920x1080/8b0000/FFFFFF/png",
      changePage: (context) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SobreMim()));
      }),
  Cartao(
      titulo: "Meus projetos",
      search: "Projects",
      descricao: "Descrição sobre meus projetos",
      urlImagem: "https://placehold.co/1920x1080/008b00/FFFFFF/png",
      changePage: (context) {}
      //Navigator.push(
      //    context, MaterialPageRoute(builder: (context) => Projetos()));
      ),
  Cartao(
      titulo: "Certificados",
      search: "Certificates",
      descricao: "Descrição sobre certificados",
      urlImagem: "https://placehold.co/1920x1080/00008b/FFFFFF/png",
      changePage: (context) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Certificados()));
      }),
  Cartao(
    titulo: "Contato",
    search: "Contact",
    descricao: "Descrição sobre contato",
    urlImagem: "https://placehold.co/1920x1080/8b0000/FFFFFF/png",
    changePage: (context) {},
  )
];

class Projetos {}
