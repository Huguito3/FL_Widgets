import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home temp app bar'),
      ),
      body: ListView(
        children:_crearListaCorta(),
      ),
    );
  }

  List<Widget> _crearLista() {
    List<Widget> lista = new List<Widget>();
    for (String item in opciones) {
      final tempWidget = ListTile(title: Text(item));
      // lista.add(tempWidget);
      // lista.add(Divider(color: Colors.lime,));
      //Misma forma de escribir lo anterior
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.lime,
        ));
    }
    return lista;
  }

  List<Widget> _crearListaCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
        title: Text(item + '!'),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      ),
      Divider()
        ],
      );
    }).toList();
  }
}
