import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_teste/widgets/appbar_comum.dart';
import 'package:portfolio_teste/widgets/background.dart';

class Contatos extends StatefulWidget {
  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppbarComum(titulo: 'Contatos')),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor, insira um email válido';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _subjectController,
                          decoration: const InputDecoration(
                            labelText: 'Assunto',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor, insira um assunto';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          minLines: 5,
                          maxLength: 1000,
                          keyboardType: TextInputType.multiline,
                          controller: _messageController,
                          decoration: const InputDecoration(
                            labelText: 'Mensagem',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor, insira uma mensagem';
                            }
                            return null;
                          },
                          maxLines: null,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: const Text('Enviar'),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            //TODO
                          },
                          icon: const Icon(FontAwesomeIcons.instagram)),
                      IconButton(
                          onPressed: () {
                            //TODO
                          },
                          icon: const Icon(FontAwesomeIcons.linkedinIn)),
                      IconButton(
                          onPressed: () {
                            //TODO
                          },
                          icon: const Icon(FontAwesomeIcons.github)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
