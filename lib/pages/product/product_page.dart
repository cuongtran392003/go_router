import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductPage extends StatelessWidget{
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                fit: BoxFit.cover,
                image: "https://plus.unsplash.com/premium_photo-1663858367001-89e5c92d1e0e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZvb2R8ZW58MHx8MHx8fDA%3D"),
          )),
          Expanded(
            flex: 2,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("DATA"),
                  ],
                          ),
              )),
        ],
      ),
    );
  }
}