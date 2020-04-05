import 'package:flutter/material.dart';

class ScreenNuevoGrupo extends StatefulWidget {
  @override
  _ScreenNuevoGrupoState createState() => _ScreenNuevoGrupoState();
}

class _ScreenNuevoGrupoState extends State<ScreenNuevoGrupo> {
  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: _myAppBar(argumentos['dato1']),
      body: _myBody(),
    );
  }

  Widget _myBody() {
    return Container(
      child: Column(
        children: <Widget>[
          _myBody1(),
        ],
      ),
    );
  }

  Widget _myBody1() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Añadir Personas",
          // labelStyle: TextStyle(
          //   fontSize: 30,
          //   color: Colors.red,
          // ),
          // labelText: "holalkjljljljasldkjalkjdslajdsljaasdads",
          // enabled: false,
        ),
      ),
    );
  }

//! myappBar of nuevo grupo
  Widget _myAppBar(String titulo) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xFF0088CC),
      centerTitle: true,
      actions: <Widget>[
        _miActionMenu(MediaQuery.of(context).size.width, titulo),
      ],
    );
  }

  Widget _miActionMenu(var anchoPantalla, String titulo) {
    return Container(
      width: anchoPantalla,
      height: 200,
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.only(left: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              titulo,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("hasta 200000 miembros"),
          ],
        ),
      ),
    );
  }
}
