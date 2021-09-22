import 'package:flutter/material.dart';
import 'package:gpay_ui/data/data.dart';
import 'package:gpay_ui/size_config.dart';

class OrderList extends StatelessWidget {
  final trendingitems = [
    'Zomato',
    'Swiggy',
    'Amazon',
    'Zomato',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: trendingitems.length,
        itemBuilder: (context, int i) {
          return Container(
              margin:  EdgeInsets.only(top: 2.5 * SizeConfig.heightMultiplier),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10.20*SizeConfig.widthMultiplier)),
                  ClipOval(
                    child: Image.asset(cards[i].imageurl,
                    fit: BoxFit.fill,
                    width: 12.75*SizeConfig.widthMultiplier,
                    height: 6.25*SizeConfig.heightMultiplier,),
                      
                    ),
                  
                  SizedBox(
                    width: 38.26*SizeConfig.widthMultiplier,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black26),
                        ),
                        child: Text(
                          cards[i].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 3.12*SizeConfig.heightMultiplier),
                        ),
                      )
                    ],
                  )
                ],
              ));
        });
  }
}
