import 'package:flutter/material.dart';
import 'package:flutter_essentials_aula_01/widgets/blue_button.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: BlueButtonWidget(
        text: "Voltar",
        onPressed: () => _onClickVoltar(context),
      ),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context, "Tela 2");
  }
}
