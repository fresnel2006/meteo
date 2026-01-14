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
      body: ZoomDrawer(

          mainScreenTapClose: true,
          menuScreen: MenuPage(),
          mainScreen: MeteoPage()),
    );
  }
}
