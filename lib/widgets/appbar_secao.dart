import 'package:flutter/material.dart';

class AppbarSecao extends StatelessWidget {
  final String titulo;
  const AppbarSecao({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo,
          style: const TextStyle(
              color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold)),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
