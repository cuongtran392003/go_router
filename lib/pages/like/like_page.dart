import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/mockup/item.dart';
import 'package:go_router_flutter/app/router/router_name.dart';
import 'package:go_router_flutter/models/article.dart';
import 'package:go_router_flutter/provider/like_provide.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

import '../home/wigdet/home_bottomappbar.dart';

class LikePage extends StatelessWidget{
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> idListLike = context.watch<LikeProvide>().listlike;
// ✅ Lọc danh sách bài viết dựa trên danh sách idListLike
    List<Article> data = dataMockup
        .where((element) => idListLike.contains(element.id))
        .toList();

    return Scaffold(
      body: SafeArea(
        child:data.isNotEmpty ? ListView.separated(
          separatorBuilder: (context,index)=>SizedBox(height: 20,),
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          itemCount: data.length,
          itemBuilder: (BuildContext context,int index){
            return  InkWell(
              onTap: (){
                context.goNamed(RouterName.likeproduct,extra: dataMockup[index]);
              },
              child: AspectRatio(aspectRatio: 5/2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                      fit: BoxFit.cover,
                      image: data[index].image),
                ),
              ),
            );
          },) : Center(child: Text("Chua co san pham yeu thich")),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}