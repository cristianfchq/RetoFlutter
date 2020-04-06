import 'package:flutter/material.dart';
import 'package:telegram_design/screens/principalScreen.dart';
import 'package:telegram_design/screens/screenNuevoCanal.dart';
import 'package:telegram_design/screens/screenNuevoChatSecreto.dart';
import 'package:telegram_design/screens/screenNuevoGrupo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: PrincipalScreen(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext) => PrincipalScreen(),
        "nuevoGrupo": (BuildContext) => ScreenNuevoGrupo(),
        "nuevoChatSecreto": (BuildContext) => ScreenNuevoChatSecreto(),
        "nuevoCanal": (BuildContext) => ScreenNuevoCanal(),
      },
    );
  }
}
