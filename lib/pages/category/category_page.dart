import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryPage extends StatelessWidget{
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(height: 20,),
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              itemCount: 10,
              itemBuilder: (BuildContext context,int index){
                return  AspectRatio(aspectRatio: 5/2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                        fit: BoxFit.cover,
                        image: "https://plus.unsplash.com/premium_photo-1663858367001-89e5c92d1e0e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZvb2R8ZW58MHx8MHx8fDA%3D"),
                  ),
                );
              },),
          )
      );
  }
}