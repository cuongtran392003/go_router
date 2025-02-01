import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/router/router_name.dart';
import 'package:go_router_flutter/models/article.dart';
import 'package:go_router_flutter/pages/category/category_page.dart';
import 'package:go_router_flutter/pages/home/home_pages.dart';
import 'package:go_router_flutter/pages/like/like_page.dart';
import 'package:go_router_flutter/pages/product/product_page.dart';
import 'package:go_router_flutter/pages/root_page.dart';

class RouterCustom {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      ShellRoute(
        builder: (context,state,child){
          return RootPage(child: child);
        },
          routes: [
        GoRoute(
          name: RouterName.home,
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePages();
          },
          routes: <RouteBase>[
            GoRoute(
              name: RouterName.product,
              path: 'product',
              builder: (BuildContext context, GoRouterState state) {
                Article item = state.extra as Article;
                return  ProductPage(
                  item: item,
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: RouterName.category,
          path: '/category',
          builder: (BuildContext context, GoRouterState state) {
            return const CategoryPage();
          },
          routes: [
            GoRoute(name: RouterName.categoryproduct,path: 'product',builder: (BuildContext context, GoRouterState state){
              Article item = state.extra as Article;
              return  ProductPage(
                item: item,
              );
            }),
          ],
        ),
            GoRoute(
              name: RouterName.like,
              path: '/like',
              builder: (BuildContext context, GoRouterState state) {
                return const LikePage();
              },
              routes: [
                GoRoute(name: RouterName.likeproduct,path: 'product',builder: (BuildContext context, GoRouterState state){
                  Article item = state.extra as Article;
                  return  ProductPage(
                    item: item,
                  );
                }),
              ],
            ),
      ]),

    ],
  );
}
