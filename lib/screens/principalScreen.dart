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

  Widget _myBody(){
    return Container();
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
