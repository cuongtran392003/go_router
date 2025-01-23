import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Text("Good Morning"),
                  ],
                ),
                Icon(CupertinoIcons.bell),
              ],
            );
  }
}