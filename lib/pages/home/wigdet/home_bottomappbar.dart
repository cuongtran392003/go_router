import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){
            context.go('/');
          }, icon: Icon(Icons.home)),
          SizedBox(width: 40,),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          SizedBox(width: 40,),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          SizedBox(width: 40,),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
