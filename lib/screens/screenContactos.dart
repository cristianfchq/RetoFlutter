
import 'package:flutter/material.dart';

class ScreenContatos extends StatefulWidget {
  @override
  _ScreenContatosState createState() => _ScreenContatosState();
}

class _ScreenContatosState extends State<ScreenContatos> {
  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: _myAppBar(argumentos['titulo']),
    );
  }

//! myappbar

  Widget _myAppBar(String titulo) {
    return AppBar(
      backgroundColor: Color(0xFF0088CC),
      title: Text(titulo),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, size: 30),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        IconButton(
          icon: Icon(Icons.playlist_add, size: 30),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        
      ],
    );
  }
}