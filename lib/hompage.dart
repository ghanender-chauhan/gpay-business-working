import 'package:flutter/material.dart';
import 'package:gpay_ui/widget/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.dangerous_outlined),
        title: Text("Buiseness"),
        backgroundColor: Colors.grey[900],

        actions: <Widget>[
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.more_vert,
          ),
          color: Colors.white70,
          ),
        ],
      ),

      body: Container(height:1000 ,
      color: Colors.grey[800],
        child: Trending(),
        
      ) ,
      
    );
  }
}