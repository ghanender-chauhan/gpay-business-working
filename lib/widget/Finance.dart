import 'package:flutter/material.dart';

import 'package:gpay_ui/data/data2.dart';
import 'package:gpay_ui/size_config.dart';
import 'package:gpay_ui/widget/Category_card.dart';

class Finance extends StatelessWidget {
  final trendingitems = [
    'Zomato',
    'Swiggy',
    'Amazon',
    'Zomato',
  ];
 

  @override
  Widget build(BuildContext context) {
    return Container(
         
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 250, top: 0),
                child: Text(
                  "Finance",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(height: 10, thickness: 5,color: Colors.blue[200],),
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
                          width: 63 * SizeConfig.widthMultiplier,
                          height: 18 * SizeConfig.heightMultiplier,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            child: Image.asset(
                              cardsSecond[i].imageurl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 12.5 * SizeConfig.heightMultiplier,
                            left: 2.8 * SizeConfig.widthMultiplier),
                        child: Text(
                          cardsSecond[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 3.12 * SizeConfig.heightMultiplier,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 420,
          width: 350,
          decoration:BoxDecoration(
              border: Border.all(
                color: Colors.blueAccent,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20)),
          
            child: ListView.builder(
        itemCount: trendingitems.length,
        itemBuilder: (context, int i) {
          return Container(
              margin: EdgeInsets.only(top: 3 * SizeConfig.heightMultiplier,),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 6 * SizeConfig.widthMultiplier)),
                        ClipOval(
                          child: Image.asset(
                            orderSecond[i].orderImage,
                            fit: BoxFit.fill,
                            width: 15 * SizeConfig.widthMultiplier,
                            height: 7 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        SizedBox(
                          width: 3 * SizeConfig.widthMultiplier,
                        ),
                        Text(
                          orderSecond[i].orderName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 2.8 * SizeConfig.heightMultiplier),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(bottom: 0),
                    child: Text(
                      orderSecond[i].subHeading,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 2 * SizeConfig.heightMultiplier),
                    ),
                  )
                ],
              ));
        }
        ),
          ),
          
          
            ],
            
            
            )
              );


              
              
              
              
              
              
              
              
              
          
  }
}