import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),_cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
        padding: EdgeInsets.all(20.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.green,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Soy el texto de la tarjet aque les quiero mostrar y probar como funciona este negocio de las tarjetas'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://cnet4.cbsistatic.com/img/pI-Oq4fGqthDVMMMuyL2ZMnaC5I=/2019/11/01/1e902743-2ee4-4c22-9b66-0b396596b13e/20190701-154228.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fit: BoxFit.cover,
            height: 200.0,
          ),
          // Image(
          //   image: NetworkImage('https://cnet4.cbsistatic.com/img/pI-Oq4fGqthDVMMMuyL2ZMnaC5I=/2019/11/01/1e902743-2ee4-4c22-9b66-0b396596b13e/20190701-154228.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Texto de la imagen'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow:<BoxShadow>[
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.white,
              spreadRadius: 10.0,
              offset: Offset(0.0, 0.0)
            )
          ] ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
