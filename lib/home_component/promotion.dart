import 'package:flutter/material.dart';
import 'promotion_card.dart';
class Promotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 150.0,
                width: double.infinity,
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      PromotionCard(
                        image: 'images/Banner1.png',
                      ),
                      PromotionCard(
                        image: 'images/Banner2.png',
                      )
                    ],
                  ),
              ),
            );
  }
}