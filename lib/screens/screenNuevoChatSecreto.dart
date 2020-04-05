import 'package:flutter/material.dart';

class ScreenNuevoChatSecreto extends StatefulWidget {
  @override
  _ScreenNuevoChatSecretoState createState() => _ScreenNuevoChatSecretoState();
}

class _ScreenNuevoChatSecretoState extends State<ScreenNuevoChatSecreto> {
  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: _myAppBar(argumentos['titulo']),
    );
  }

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
      ],
    );
  }
}
