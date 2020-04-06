import 'package:flutter/material.dart';

class ScreenNuevoGrupo extends StatefulWidget {
  @override
  _ScreenNuevoGrupoState createState() => _ScreenNuevoGrupoState();
}

class _ScreenNuevoGrupoState extends State<ScreenNuevoGrupo> {

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

//! la lista de contactos del cuerpo

  Widget _myBody() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Container(
            height: double.infinity,
            child: ListView(
              children: <Widget>[
                _myBody2("assets/img/stan_lee.jpg", "Stan Lee",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/black_widow.jpg", "Black Widow",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/brus_banner.jpg", "Bruss Banner",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/capitan_america.jpg", "Capitan America",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/clint_barton.jpg", "Clint Barton",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/iron_man.jpg", "Iron Man",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/thor.jpg", "Thor",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/jhenny_noa.jpg", "Jhenny Noa",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/jorge_apaza.jpg", "Jorge Apaza",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/ruber_perez.jpg", "Ruber Perez",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),

                _myBody2("assets/img/stan_lee.jpg", "Stan Lee",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/black_widow.jpg", "Black Widow",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/brus_banner.jpg", "Bruss Banner",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/capitan_america.jpg", "Capitan America",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/clint_barton.jpg", "Clint Barton",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/iron_man.jpg", "Iron Man",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/thor.jpg", "Thor",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/jhenny_noa.jpg", "Jhenny Noa",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/jorge_apaza.jpg", "Jorge Apaza",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
                _myBody2("assets/img/ruber_perez.jpg", "Ruber Perez",
                    "últ. vez el 26 de mar. a las 13:58", "", ""),
                _myDivider(),
              ],
            ),
          ),
        ),
        _myBody1(),
      ],
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

  Widget _myBody1() {
    return Container(
      // color: Colors.red,
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 1),
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
      ),
    );
  }

  Widget _myBody2(String rutaImagen, String nombreTitulo, String mensaje,
      String hora, String cantidadMensajes) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        height: 60,
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
      child: CircleAvatar(
        backgroundImage: AssetImage(rutaImage),
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

//! myappBar of nuevo grupo
  Widget _myAppBar(String titulo) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: _dark ? Color(0xFF434E69) : Color(0xFF0088CC),//Color(0xFF0088CC),
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
