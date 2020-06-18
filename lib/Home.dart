import 'package:flutter/material.dart';
import 'package:helloworld/home_component/title2.dart';
import 'home_component/category.dart';
import 'home_component/product.dart';
import 'home_component/title.dart';
import 'home_component/top_bar.dart';
import 'home_component/promotion.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: newTopBar(),
        body: 
        Stack(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.indigo[500],
            ),
            ListView(
            children: <Widget>[
              TitleNames(
                name: 'Choose Style',
              ),
              Category(),
              TitleName(name: 'Latest'),
              Promotion(),
              TitleName(name: 'Daily Discover'),
              Product(),
            ],
          ),
          ],
           
        )
            
        );
  }
}
