import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      drawer: _myDrawer(),
      body: _myBody(),
    );
  }

  Widget _myBody() {
    return Container(
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          // _myListOfTelegram("rutaImage","nombreGrupo o nombreContacto","nombreUsuario y mensaje(dividirlo en dos)","hora","cantidad mendajes no leidos"),
          _myListOfTelegram("assets/img/telegram.png", "Telegram", "Mensaje de tele...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/flutter.png", "Flutter - Dart Español", "Mensaje de tele...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/stan_lee.jpg", "Stan Lee", "Mensaje de Stan Lee...", "20:33", 10),
          _myDivider(),

          _myListOfTelegram("assets/img/black_widow.jpg", "Black Widow", "Mensaje de black widow...", "20:33", 10),
          _myDivider(),

          _myListOfTelegram("assets/img/brus_banner.jpg", "Bruss Banner", "Mensaje de Bruss Banner...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/capitan_america.jpg", "Capitan America", "Mensaje de Capitan America...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/clint_barton.jpg", "Clint Barton", "Mensaje de Clint Barton...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/iron_man.jpg", "Iron Man", "Mensaje de Iron Man...", "20:33", 10),
          _myDivider(),
          _myListOfTelegram("assets/img/thor.jpg", "Thor", "Mensaje de Thor...", "20:33", 10),
          _myDivider(),

        ],
      ),
    );
  }

  Widget _myDivider() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 86,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 86,
            child: Divider(
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _myListOfTelegram(String rutaImagen, String nombreTitulo, String mensaje, String hora, int cantidadMensajes) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        height: 85,
        // width: double.infinity,
        // color: Colors.red,
        child: Row(
          children: <Widget>[
            _image(rutaImagen),
            _nameAndTime(nombreTitulo, mensaje, hora, cantidadMensajes),
          ],
        ),
      ),
    );
  }

  Widget _image(String rutaImage) {
    return Container(
      // color: Colors.green,
      width: 66,
      height: 66,
      // width: MediaQuery.of(context).size.width * 25 / 100,
      child: CircleAvatar(
        backgroundImage: AssetImage(rutaImage),
        // radius: MediaQuery.of(context).size.width * 10 / 100,
        radius: 33.0,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _nameAndTime(String nombreTitulo, String mensaje, String hora, int cantidadMensajes) {
    return Container(
      width: MediaQuery.of(context).size.width - 20 - 66,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 13, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nombreTitulo,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(mensaje),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(hora),
                Text(cantidadMensajes.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _myDrawer() {
    return Container(
      height: 200,
      width: 100,
      color: Colors.white,
    );
  }

  Widget _myAppBar() {
    return AppBar(
      title: Text("Telegram"),
      elevation: 2,
      backgroundColor: Color(0xFF0088CC),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
