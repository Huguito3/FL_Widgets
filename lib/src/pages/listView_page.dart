import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  //List<int> _listaNumeros = [1, 2, 3, 4, 5];
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregarDiezImagenes();
    _scrollController.addListener(() {
      print('Position Pixels = ${_scrollController.position.pixels}');
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregarDiezImagenes();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Listas')),
        body: Stack(
          children: <Widget>[_crearLista(), _crearLoading()],
        )
        //
        );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPaginaUno,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index) {
            final imagen = _listaNumeros[index];
            return FadeInImage(
              height: 250.0,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
            );
          }),
    );
  }

  void _agregarDiezImagenes() {
    for (var i = 0; i < 5; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {
      final _duration = new Duration(seconds: 2);
      return new Timer(_duration, respuestaHTTP);
    });
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregarDiezImagenes();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _obtenerPaginaUno() async {
    final duration = new Duration(seconds: 2);
     new Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarDiezImagenes();
    });

    return Future.delayed(duration);
  }
}
