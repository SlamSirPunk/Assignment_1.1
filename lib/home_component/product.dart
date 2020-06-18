import 'package:flutter/material.dart';
import 'product_card.dart';
class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30),
      child: Container(
                height: 120,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    ProductCard(image: 'images/baju1.png', name: 'Dress 1', price: 'RM49.99',),
                    ProductCard(image: 'images/baju2.png', name: 'Dress 2', price: 'RM30.58',),
                    ProductCard(image: 'images/baju3.png', name: 'One Piece', price: '110.00',),
                    
                  ],
                ),
              ),
    );
  }
}