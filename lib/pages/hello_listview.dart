import 'package:flutter/material.dart';
import 'package:flutter_essentials_aula_01/pages/img_page.dart';
import 'package:flutter_essentials_aula_01/utils/navigator.dart';

// ignore: empty_constructor_bodies
class Imagem {
  String nome, caminho;

  Imagem(this.nome, this.caminho);
}

class HelloListViewWidget extends StatefulWidget {
  const HelloListViewWidget({Key? key}) : super(key: key);

  @override
  State<HelloListViewWidget> createState() => _HelloListViewWidgetState();
}

class _HelloListViewWidgetState extends State<HelloListViewWidget> {
  bool _gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
        actions: [
          IconButton(
            onPressed: () {
              print('Lista');
              setState(() {
                _gridView = false;
              });
            },
            icon: const Icon(Icons.list),
            tooltip: 'Modo Lista',
          ),
          IconButton(
            onPressed: () {
              print('Lista');
              setState(() {
                _gridView = true;
              });
            },
            icon: const Icon(Icons.grid_on),
            tooltip: 'Modo Grid',
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Imagem> imgs = [
      Imagem('Dois', 'assets/img/doisBunitu.jpg'),
      Imagem('Um', 'assets/img/umBunitu.jpg'),
    ];

    if (_gridView) {
      return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: imgs.length,
          itemBuilder: (context, index) {
            return _itemView(context, imgs, index);
          });
    } else {
      return ListView.builder(
          itemCount: imgs.length,
          itemExtent: 300,
          itemBuilder: (context, index) {
            return _itemView(context, imgs, index);
          });
    }
  }
}

_itemView(BuildContext context, List<Imagem> imgs, int index) {
  Imagem img = imgs[index];
  //return _img(img.caminho);
  return GestureDetector(
    onTap: () {
      push(
        context,
        ImgPage(imagem: img),
      );
    },
    child: Stack(
      fit: StackFit.expand,
      children: [
        _img(img.caminho),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              img.nome,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

_img(String img) {
  return Image.asset(
    img,
    fit: BoxFit.scaleDown,
  );
}
