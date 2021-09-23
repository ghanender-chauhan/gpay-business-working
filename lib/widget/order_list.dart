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
              margin: EdgeInsets.only(top: 3 * SizeConfig.heightMultiplier),
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
                            order[i].orderImage,
                            fit: BoxFit.fill,
                            width: 15 * SizeConfig.widthMultiplier,
                            height: 7 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        SizedBox(
                          width: 3 * SizeConfig.widthMultiplier,
                        ),
                        Text(
                          order[i].orderName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 2.8 * SizeConfig.heightMultiplier),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(bottom: 0),
                    child: Text(
                      order[i].subHeading,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 2 * SizeConfig.heightMultiplier),
                    ),
                  )
                ],
              ));
        }
        );
  }
}
