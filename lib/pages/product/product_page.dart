import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/mockup/item.dart';
import 'package:go_router_flutter/models/article.dart';
import 'package:go_router_flutter/provider/like_provide.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

import '../home/wigdet/home_bottomappbar.dart';

class ProductPage extends StatelessWidget{
  Article item;
   ProductPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Hero(
                    tag: 'tag${item.id}',
                    child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                        fit: BoxFit.cover,
                        image: item.image),
                  ),
                ),
                Positioned(
                  bottom: 10,
                    right: 10,
                    child: Consumer<LikeProvide>(
                        builder: (context,value,child)=>LikeButton(
                          isLiked: value.listlike.contains(item.id),
                          onTap: (isLiked){
                            context.read<LikeProvide>().onClickLike(item.id);
                            return Future.value(!isLiked);
                          },
                        ),
                    )
                ),
              ],
            ),
          )),
          Expanded(
            flex: 2,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text(item.description),
                  ],
                          ),
              )),
        ],
      ),
      bottomNavigationBar:const BottomNavBar(),
    );
  }
}