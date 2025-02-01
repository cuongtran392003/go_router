import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/app/mockup/item.dart';
import 'package:go_router_flutter/app/router/router_name.dart';
import 'package:go_router_flutter/provider/like_provide.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';


class HomeListcategory extends StatelessWidget{
  const HomeListcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: GridView.builder(
          itemCount: dataMockup.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,

            ),
            itemBuilder: (BuildContext context,int index){
              return InkWell(
                onTap: (){
                  context.goNamed(RouterName.product,extra: dataMockup[index]);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(1, 1),
                              color: Colors.grey.shade200,
                              blurRadius: 2,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Hero(
                                tag: 'tag${dataMockup[index].id}',
                                child: FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    fit: BoxFit.cover,
                                    image: dataMockup[index].image),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Consumer<LikeProvide>(
                                builder: (context, value, child) => LikeButton(
                                  isLiked: value.listlike.contains(dataMockup[index].id),
                                  onTap: (isLiked) async {
                                    context.read<LikeProvide>().onClickLike(dataMockup[index].id);
                                    return Future.value(!isLiked); // Đảo ngược trạng thái Like
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(dataMockup[index].title,maxLines: 1,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              );
            }
        ),
      );
  }
}