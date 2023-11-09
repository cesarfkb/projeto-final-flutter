import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String corpo = "";
  String _url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                final response = await http.get(
                  Uri.parse(
                      'https://api.pexels.com/v1/search?query=people&per_page=1'),
                  // Send authorization headers to the backend.
                  headers: {
                    HttpHeaders.authorizationHeader:
                        'xW1wTYCzzpyHL4GBrtyOJ5O9s1tMmzFUTbk6COruWYZOJR7eEXCpmNRs',
                  },
                );
                var data = json.decode(response.body);
                String url = data["photos"][0]["src"]["original"].toString();

                print(url);
                setState(() {
                  corpo = response.body;
                  _url = url;
                });
              },
              child: const Text("Teste API")),
          const Text("Corpo de texto:"),
          _url.isEmpty
              ? const Text("Sem Imagem")
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.network(
                    _url,
                    fit: BoxFit.cover,
                  ),
                )
        ],
      )),
    );
  }
}
