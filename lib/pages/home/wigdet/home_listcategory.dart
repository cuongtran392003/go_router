import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';


class HomeListcategory extends StatelessWidget{
  const HomeListcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: GridView.builder(
          itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,

            ),
            itemBuilder: (BuildContext context,int index){
              return InkWell(
                onTap: (){
                  context.go("/details");
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
                        child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            fit: BoxFit.cover,
                            image: "https://images.unsplash.com/photo-1473093295043-cdd812d0e601?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D"),
                      ),
                    ),
                    SizedBox(height: 5,),
                    const Text("Salad",maxLines: 1,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              );
            }
        ),
      );
  }
}