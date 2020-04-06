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
      body: _myBody(),
    );
  }

//! MyBody

  Widget _myBody() {
    return Container(
      // width: double.infinity,
      child: ListView(
        children: <Widget>[
          _myBodyOfTelegram(Icons.group_add, "Invitar amigos", "", "", ""),
          _myBodyOfTelegram(
              Icons.location_on, "Encontrar personas cerca", "", "", ""),
          _separation(),
          // _myListOfTelegram("rutaImage","nombreGrupo o nombreContacto","nombreUsuario y mensaje(dividirlo en dos)","hora","cantidad mendajes no leidos"),
          _myListOfTelegram("assets/img/stan_lee.jpg", "Stan Lee",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/black_widow.jpg", "Black Widow",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/brus_banner.jpg", "Bruss Banner",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/capitan_america.jpg", "Capitan America",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/clint_barton.jpg", "Clint Barton",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/iron_man.jpg", "Iron Man",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/thor.jpg", "Thor",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/jhenny_noa.jpg", "Jhenny Noa",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/jorge_apaza.jpg", "Jorge Apaza",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/ruber_perez.jpg", "Ruber Perez",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/stan_lee.jpg", "Stan Lee",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/black_widow.jpg", "Black Widow",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/brus_banner.jpg", "Bruss Banner",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/capitan_america.jpg", "Capitan America",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/clint_barton.jpg", "Clint Barton",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/iron_man.jpg", "Iron Man",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/thor.jpg", "Thor",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/jhenny_noa.jpg", "Jhenny Noa",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/jorge_apaza.jpg", "Jorge Apaza",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
          _myListOfTelegram("assets/img/ruber_perez.jpg", "Ruber Perez",
              "últ. vez el 26 de mar. a las 13:58", "", ""),
          _myDivider(),
        ],
      ),
    );
  }

//! the separation

  Widget _separation(){
    return Container(
      height: 30,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15),
        child: Text("Ordenado por última vez", textAlign: TextAlign.start, style: TextStyle(fontSize: 14),),
      ),
    );
  }

//! Parte superior del cuerpo de contactos (invitar amigos y encontrar personas cerca)

  Widget _myBodyOfTelegram(IconData icono, String nombreTitulo, String mensaje,
      String hora, String cantidadMensajes) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        height: 60,
        // width: double.infinity,
        // color: Colors.red,
        child: Row(
          children: <Widget>[
            _icono(icono),
            _name(nombreTitulo, mensaje, hora, cantidadMensajes),
          ],
        ),
      ),
    );
  }

  Widget _icono(IconData icono){
    return Container(
      // color: Colors.green,
      width: 50,
      height: 50,
      // width: MediaQuery.of(context).size.width * 25 / 100,
      child: CircleAvatar(
        child: Icon(icono, color: Colors.black, size: 33.0,),
        // radius: MediaQuery.of(context).size.width * 10 / 100,
        radius: 33.0,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _name(String nombreTitulo, String mensaje, String hora,
      String cantidadMensajes){
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
                  style: TextStyle(fontSize: 17),
                ),
                // Text(
                //   mensaje,
                //   style: TextStyle(color: Colors.black54),
                // ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(hora),
                Text(cantidadMensajes),
              ],
            ),
          ],
        ),
      ),
    );
  }

//! parte inferior del cuerpo de contactos (lista de contactos)

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

  Widget _myListOfTelegram(String rutaImagen, String nombreTitulo,
      String mensaje, String hora, String cantidadMensajes) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        height: 60,
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
      width: 50,
      height: 50,
      // width: MediaQuery.of(context).size.width * 25 / 100,
      child: CircleAvatar(
        backgroundImage: AssetImage(rutaImage),
        // radius: MediaQuery.of(context).size.width * 10 / 100,
        radius: 33.0,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _nameAndTime(String nombreTitulo, String mensaje, String hora,
      String cantidadMensajes) {
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
                Text(
                  mensaje,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(hora),
                Text(cantidadMensajes),
              ],
            ),
          ],
        ),
      ),
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
