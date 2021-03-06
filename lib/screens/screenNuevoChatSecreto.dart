import 'package:flutter/material.dart';

class ScreenNuevoChatSecreto extends StatefulWidget {
  @override
  _ScreenNuevoChatSecretoState createState() => _ScreenNuevoChatSecretoState();
}

class _ScreenNuevoChatSecretoState extends State<ScreenNuevoChatSecreto> {

  bool _dark;

  // @override
  // void initState() { 
  //   super.initState();
  //   _dark = false;
  // }

  Brightness _getBrightness() {
     return _dark ? Brightness.dark : Brightness.light;
  }


  @override
  Widget build(BuildContext context) {
    final Map argumentos = ModalRoute.of(context).settings.arguments;
    bool _darkRecive = argumentos['themeTELEGRAM'];

    setState(() {
                  _dark = _darkRecive;
                });


    return Theme(

      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),

      child: Scaffold(

        backgroundColor: _dark ? Color(0xFF31353F) : Colors.grey.shade200,

        appBar: _myAppBar(argumentos['titulo']),
        body: _myBody(),
      ),
    );
  }

//! Lista de contactos de cuerpo

  Widget _myBody() {
    return Container(
      // width: double.infinity,
      child: ListView(
        children: <Widget>[
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
                  style: TextStyle(color: _dark ?  Colors.white54 :Colors.black54,),
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

  //! my appBar

  Widget _myAppBar(String titulo) {
    return AppBar(
      backgroundColor: _dark ? Color(0xFF434E69) : Color(0xFF0088CC),//Color(0xFF0088CC),
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
