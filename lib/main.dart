import 'package:flutter/material.dart';
import 'package:castro/paginas_tabs/paginatb1.dart';
import 'package:castro/paginas_tabs/paginatb2.dart';
import 'package:castro/paginas_tabs/paginatb3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Uso Tabs Castro",
      // Home
      home: Micasa()));
} //fin main

class Micasa extends StatefulWidget {
  @override
  MicasaState createState() => MicasaState();
} //fin de mi casa

class MicasaState extends State<Micasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Uso de navegación inferior"),
        // Set the background color of the App Bar
        backgroundColor: Colors.green,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.green,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.circle_notifications),
            ),
            Tab(
              icon: Icon(Icons.bluetooth),
            ),
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ), //Navigator pie de pagina
    ); //fin Scaffold
  } //fin de widget

} //MicasaState
