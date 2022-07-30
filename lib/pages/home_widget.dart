import 'package:flutter/material.dart';
import 'package:flutter_essentials_aula_01/pages/drawer_list.dart';
import 'package:flutter_essentials_aula_01/pages/hello_listview.dart';
import 'package:flutter_essentials_aula_01/utils/navigator.dart';
import 'package:flutter_essentials_aula_01/widgets/blue_button.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_essentials_aula_01/pages/page1_widget.dart';
import 'package:flutter_essentials_aula_01/pages/page2_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
/*
class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Cantuario2"),
      ),
      body: _body(context),
      drawer: _drawer(context),
      floatingActionButton: _buttonPlus(),
    );
  }

  _body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text_type_1('Flutter Cantuario2'),
          _pageView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _botaoOk(context),
              _botaoCancel(),
            ],
          )
        ],
      ),
    );
  }

  _buttonPlus() {
    return FloatingActionButton(
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.yellowAccent,
      ),
      onPressed: () {},
    );
  }

  // ignore: non_constant_identifier_names
  _text_type_1(String texto) {
    return Text(
      texto,
      style: GoogleFonts.poppins(
        color: const Color.fromARGB(255, 59, 59, 61),
        fontSize: 24,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Container _pageView() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 96,
      width: 96,
      child: PageView(
        children: <Widget>[
          _img1('assets/img/doisBunitu.jpg'),
          _img1('assets/img/umBunitu.jpg'),
        ],
      ),
    );
  }

  _drawer(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: PageView(
        children: <Widget>[
          _botaoOk(context),
          _botaoCancel(),
        ],
      ),
    );
  }

  _img1(String imagem) {
    return Image.asset(
      imagem,
      //fit: BoxFit.cover,
      width: 48,
      height: 48,
    );
  }

  _botaoOk(BuildContext context) {
    return ElevatedButton(
      // ignore: prefer_const_constructors
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      child: const Text(
        'Ok',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => _onClickOk(context),
    );
  }

  _botaoCancel() {
    return ElevatedButton(
      // ignore: prefer_const_constructors
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellowAccent),
      ),
      child: const Text(
        'Cancelar',
        style: TextStyle(color: Colors.blueAccent),
      ),
      onPressed: () => _onClickCancel(),
    );
  }

  _onClickCancel() {
    // ignore: avoid_print
    print('Cancelar!');
  }
}

void _onClickOk(BuildContext context) {
  // ignore: avoid_print
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return const Page1();
  }));
}
 */

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
            Tab(
              text: 'Tab 3',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            _body(context),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
        //floatingActionButton: Column(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  _onClickFab();
                }),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  _onClickFab();
                }),
          ],
        ),
        drawer: const DrawerListWidget(),
      ),
    );
  }

  _body(context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_text(), _pageView(), _buttons(context)],
      ),
    );
    /*
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: _pageView(),
        ),
        Expanded(
          flex: 3,
          child: _pageView(),
        ),
      ],
    );
    */
  }

  _pageView() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: 128,
      child: PageView(
        children: <Widget>[
          _img('assets/img/doisBunitu.jpg'),
          _img('assets/img/umBunitu.jpg'),
        ],
      ),
    );
  }

  _buttons(context) {
    return Builder(
      builder: (context) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButtonWidget(
                  text: "ListView",
                  onPressed: () =>
                      _onClickNavigator(context, const HelloListViewWidget()),
                ),
                BlueButtonWidget(
                  text: "Page 2",
                  onPressed: () => _onClickNavigator(context, const Page2()),
                ),
                BlueButtonWidget(
                  text: "Page 3",
                  onPressed: () => _onClickNavigator(context, const Page2()),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButtonWidget(
                  text: "Snack",
                  onPressed: () => _onClickSnack(context),
                ),
                BlueButtonWidget(
                  text: "Dialog",
                  onPressed: () => _onClickDialog(context),
                ),
                BlueButtonWidget(
                  text: "Toast",
                  onPressed: () => _onClickToast(),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    // ignore: avoid_print
    print(">> $s");
  }

  _onClickSnack(context) {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(
      const SnackBar(
        content: Text("Olá Flutter!"),
      ),
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text("Flutter is cool!"),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }

  _onClickToast() {
    //Não funciona web
    Fluttertoast.showToast(
        msg: 'Flutter is cool! Toastyyyy!!!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  /*
  return ElevatedButton(
      // ignore: prefer_const_constructors
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      child: const Text(
        'Ok',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => _onClickOk(context),
    );
  */
  /*
  _button(BuildContext context, String text, Function onPress) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      onPressed: () => onPress,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
  */

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.scaleDown,
    );
  }

  _text() {
    return const Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}

void _onClickFab() {
  // ignore: avoid_print
  print('Adicionar');
}
