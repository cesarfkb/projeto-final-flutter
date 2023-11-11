import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_teste/widgets/projetos_dialog.dart';

class ProjetosItems extends StatelessWidget {
  IconData icon;
  final String titulo;
  final String descricao;
  ProjetosItems(
      {super.key,
      required this.icon,
      required this.titulo,
      required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 4,
                offset: const Offset(4, 5),
              ),
            ]),
        constraints: const BoxConstraints(maxHeight: 300, maxWidth: 300),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 60,
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    descricao,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // See more button action
                  ProjetosDialog()
                      .criarDialogo(context, icon, "Descrição mais elaborada")
                      .show();
                },
                child: const Text('Ver mais')),
          ],
        ),
      ),
    );
  }
}

List<ProjetosItems> projetos = [
  ProjetosItems(
    descricao: 'Descrição do projeto',
    titulo: "titulo do projeto",
    icon: FontAwesomeIcons.java,
  ),
  ProjetosItems(
    descricao: 'Descrição do projeto',
    titulo: "titulo do projeto",
    icon: Icons.android,
  ),
  ProjetosItems(
    descricao: 'Descrição do projeto',
    titulo: "titulo do projeto",
    icon: FontAwesomeIcons.js,
  ),
  ProjetosItems(
    descricao: 'Descrição do projeto',
    titulo: "titulo do projeto",
    icon: FontAwesomeIcons.python,
  ),
];
