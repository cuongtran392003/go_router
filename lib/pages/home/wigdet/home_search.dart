import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget{
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search Key..",
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
        suffixIcon: Icon(Icons.search,color: Colors.grey,),
      ),
    );
  }
  OutlineInputBorder customBorder()=>OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.circular(10.0),
  );
}