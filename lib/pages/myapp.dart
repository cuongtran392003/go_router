import 'package:flutter/material.dart';
import 'package:go_router_flutter/app/router/go_router.dart';
import 'package:go_router_flutter/pages/category/category_page.dart';
import 'package:go_router_flutter/pages/home/home_pages.dart';
import 'package:go_router_flutter/pages/product/product_page.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner:false,
        routerConfig: RouterCustom.router,
    );

  }
}