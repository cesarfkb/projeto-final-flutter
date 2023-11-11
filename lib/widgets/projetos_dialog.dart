import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjetosDialog {
  AwesomeDialog criarDialogo(
      BuildContext context, IconData icon, String texto) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      customHeader: Icon(icon, size: 40),
      animType: AnimType.scale,
      body: Center(
        child: Column(
          children: [
            Text(
              texto,
              style: const TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () {}, child: const Text("Link para o projeto"))
          ],
        ),
      ),
      btnCancel: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text(
          "Fechar",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
