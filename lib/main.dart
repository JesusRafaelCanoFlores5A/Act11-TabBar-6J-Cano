import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo TabBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Jesús Cano"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Colores",
                icon: Icon(Icons.color_lens),
              ), //Texto Icono
              Tab(
                text: "Prod",
                icon: Icon(Icons.format_paint),
              ), //Texto Icono
              Tab(
                text: "Us",
                icon: Icon(Icons.location_on),
              ), //Texto Icono
              Tab(
                text: "Config",
                icon: Icon(Icons.settings_accessibility),
              ), //Texto Icono
            ],
          ),
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Colores",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Productos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Nosotros",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Configuración",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
        ]),
      ),
    );
  }
}
