import 'package:flutter/material.dart';
import 'package:gpay_ui/widget/order_list.dart';
import 'package:gpay_ui/widget/trending.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Buiseness",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
         
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 250, top: 10),
                child: Text(
                  "Trending",
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
              
              Trending(),
              


                
              
            ],
          ),
        ),
      ),
    );
  }
}
