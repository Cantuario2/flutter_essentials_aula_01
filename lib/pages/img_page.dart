import 'package:flutter/material.dart';
import 'package:flutter_essentials_aula_01/pages/hello_listview.dart';

class ImgPage extends StatelessWidget {
  const ImgPage({Key? key, required this.imagem}) : super(key: key);

  final Imagem imagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imagem.nome),
      ),
      body: Image.asset(imagem.caminho),
    );
  }
}
