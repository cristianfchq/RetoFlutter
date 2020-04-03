
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
    );
  }

  Widget _myAppBar(){
    return AppBar(
      title: Text("Telegram"),
      backgroundColor: Colors.red,
    );
  }
}