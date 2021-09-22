import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gpay_ui/data/data.dart';
import 'package:gpay_ui/size_config.dart';
import 'package:gpay_ui/widget/order_list.dart';

class Trending extends StatelessWidget {
  final trendingitems = ['Zomato', 'Swiggy', 'Amazon', 'Zomato'];

  @override
  Widget build(BuildContext context) {
   
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 2.5*SizeConfig.heightMultiplier),
              // color: Colors.black,
              height: 19*SizeConfig.heightMultiplier,
              // width: 300,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingitems.length,
                    itemBuilder: (BuildContext context, int i) => Stack(
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 2.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            width: 63.77*SizeConfig.widthMultiplier,
                            height: 18*SizeConfig.heightMultiplier,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              child: Image.asset(
                                cards[i].imageurl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12.5*SizeConfig.heightMultiplier, left: 2.8*SizeConfig.widthMultiplier),
                          child: Text(
                            cards[i].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 3.12*SizeConfig.heightMultiplier,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(color: Colors.grey[800],
              margin: EdgeInsets.only(top: 6.25*SizeConfig.heightMultiplier),
              height: 125*SizeConfig.heightMultiplier,
              child: OrderList(),
              ),
            ),
          
        ],
      ),
    );
  }
}
