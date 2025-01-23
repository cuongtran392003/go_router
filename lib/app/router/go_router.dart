import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/pages/home/home_pages.dart';
import 'package:go_router_flutter/pages/product/product_page.dart';

class RouterCustom {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePages();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              return const ProductPage();
            },
          ),
        ],
      ),
    ],
  );
}