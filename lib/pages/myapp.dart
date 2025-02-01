import 'package:flutter/material.dart';
import 'package:go_router_flutter/app/router/go_router.dart';
import 'package:go_router_flutter/pages/category/category_page.dart';
import 'package:go_router_flutter/pages/home/home_pages.dart';
import 'package:go_router_flutter/pages/product/product_page.dart';
import 'package:provider/provider.dart';

import '../provider/like_provide.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LikeProvide(),
      child: MaterialApp.router(
          debugShowCheckedModeBanner:false,
          routerConfig: RouterCustom.router,
      ),
    );

  }
}