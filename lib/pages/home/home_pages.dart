import 'package:flutter/material.dart';
import 'package:go_router_flutter/pages/home/wigdet/home_header.dart';
import 'package:go_router_flutter/pages/home/wigdet/home_listcategory.dart';
import 'package:go_router_flutter/pages/home/wigdet/home_search.dart';

class HomePages extends StatelessWidget{
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 20),
              HomeSearch(),
              SizedBox(height: 20,),
              HomeListcategory(),
            ],
          ),
        ),
      ),
    );
  }
}