import 'package:flutter/material.dart';

class DrawerListWidget extends StatelessWidget {
  const DrawerListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Cantuario2 Flutter'),
              accountEmail: Text('cantuario2@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img/umBunitu.jpg'),
                backgroundColor: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Favoritos'),
              subtitle: const Text('Mais informações...'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // ignore: avoid_print
                print('Item 1');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Ajuda'),
              subtitle: const Text('Informações sobre a aplicação...'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // ignore: avoid_print
                print('Ajuda');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              subtitle: const Text('Sair da aplicação...'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // ignore: avoid_print
                print('Sair');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
