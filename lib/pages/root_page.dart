import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router_flutter/pages/home/home_pages.dart';
import 'package:go_router_flutter/pages/menu/menuPage.dart';
class RootPage extends StatefulWidget{
  Widget child;
  RootPage ({super.key,required this.child});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  ZoomDrawerController zoomDrawerController= ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuPage(),
      mainScreen: widget.child,
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      slideWidth: MediaQuery.of(context).size.width*.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}

