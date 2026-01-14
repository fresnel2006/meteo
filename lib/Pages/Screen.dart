import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:scheki/Pages/Menu.dart';
import 'package:scheki/Pages/Meteo.dart';

class Screenpage extends StatefulWidget {
  const Screenpage({super.key});

  @override
  State<Screenpage> createState() => _ScreenpageState();
}

class _ScreenpageState extends State<Screenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ZoomDrawer(
angle: 0,
          slideWidth: MediaQuery.of(context).size.width *0.8,
          mainScreenTapClose: true,
          menuScreen: MenuPage(),
          mainScreen: MeteoPage()),
    );
  }
}
