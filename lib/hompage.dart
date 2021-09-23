import 'package:flutter/material.dart';
import 'package:gpay_ui/widget/trending.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.dangerous_outlined,
          color: Colors.black,
        ),
        title: Text(
          "Buiseness",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
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
         
          color: Colors.white,
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
              SingleChildScrollView(
                child: Container(
                  child: Trending(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
