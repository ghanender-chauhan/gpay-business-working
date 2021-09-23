import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gpay_ui/data/data.dart';
import 'package:gpay_ui/size_config.dart';
import 'package:gpay_ui/widget/Finance.dart';
import 'package:gpay_ui/widget/order_list.dart';

class Trending extends StatelessWidget {
  final trendingitems = ['Zomato', 'Swiggy', 'Amazon', 'Zomato'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
          Container(
            // margin: EdgeInsets.only(bottom: 2.5*SizeConfig.heightMultiplier),
            // color: Colors.black,
            height: 20 * SizeConfig.heightMultiplier,
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
                                  color: Colors.blue,
                                  offset: Offset(2.0, 1.0),
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                )
                              ]),
                          width: 63.77 * SizeConfig.widthMultiplier,
                          height: 18 * SizeConfig.heightMultiplier,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            child: Image.asset(
                              cardss[i].imageurl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 12.5 * SizeConfig.heightMultiplier,
                            left: 2.8 * SizeConfig.widthMultiplier),
                        child: Text(
                          cardss[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 3.12 * SizeConfig.heightMultiplier,
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
        
        
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueAccent,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.only(
             
              left: 20,
              right: 20,
              bottom: 70),
          height: 50 * SizeConfig.heightMultiplier,
          child: OrderList(),
        ),

        Container(
          child: Finance(),
        )
        
        
        
        
        
      ],
    );
  }
}
