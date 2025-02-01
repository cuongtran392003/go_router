import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/mockup/item.dart';
import 'package:go_router_flutter/app/router/router_name.dart';
import 'package:transparent_image/transparent_image.dart';

import '../home/wigdet/home_bottomappbar.dart';

class CategoryPage extends StatelessWidget{
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(height: 20,),
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              itemCount: dataMockup.length,
              itemBuilder: (BuildContext context,int index){
                return  InkWell(
                  onTap: (){
                    context.goNamed(RouterName.categoryproduct,extra: dataMockup[index]);
                  },
                  child: AspectRatio(aspectRatio: 5/2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                          fit: BoxFit.cover,
                          image: dataMockup[index].image),
                    ),
                  ),
                );
              },),
          ),
      bottomNavigationBar: const BottomNavBar(),
      );
  }
}