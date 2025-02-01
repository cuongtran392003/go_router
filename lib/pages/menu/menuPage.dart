import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/router/router_name.dart';
class MenuPage extends StatelessWidget{
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              onTap: (){
                context.goNamed(RouterName.home);
              },
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text('Home Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              onTap: (){
                context.goNamed(RouterName.like);
              },
              leading: Icon(CupertinoIcons.square_favorites,color: Colors.white,),
              title: Text('Favorites Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),ListTile(
              onTap: (){
                context.goNamed(RouterName.category);
              },
              leading: Icon(CupertinoIcons.calendar_today,color: Colors.white,),
              title: Text('Category Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings,color: Colors.white,),
              title: Text('Setting Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}