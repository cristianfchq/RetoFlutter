import 'package:flutter/material.dart';

class ScreenNuevoCanal extends StatefulWidget {
  @override
  _ScreenNuevoCanalState createState() => _ScreenNuevoCanalState();
}

class _ScreenNuevoCanalState extends State<ScreenNuevoCanal> {
  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: _myAppBar(argumentos['titulo']),
      body: _myBody(),
    );
  }

//! body

  Widget _myBody() {
    return Container(
      height: double.infinity,
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _image(),
                _campoTexto(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Descripción",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Puedes poner una descripción para tu canal", style: TextStyle(color: Colors.black87, fontSize: 14),),
          ],
        ),
      ),
    );
  }

  Widget _campoTexto() {
    return Container(
      // color: Colors.green,
      // height: 100,
      width: 200,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Nombre del Canal",
          suffixIcon: Icon(
            Icons.insert_emoticon,
            color: Colors.black54,
            size: 30,
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      // color: Colors.green,
      width: 80,
      height: 80,
      child: CircleAvatar(
        child: Icon(Icons.photo_camera, color: Colors.white, size: 30.0,),
        radius: 33.0,
        backgroundColor: Color(0xFF2277AA),
      ),
    );
  }

//! my appBar

  Widget _myAppBar(String titulo) {
    return AppBar(
      backgroundColor: Color(0xFF0088CC),
      title: Text(titulo),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.check, size: 30),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
