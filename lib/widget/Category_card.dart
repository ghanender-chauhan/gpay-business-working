import 'package:flutter/material.dart';


class CatCard extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              Container(
                height: 1000,
                width: double.infinity,
                color: Colors.grey[200],
                child: GridView.count(
                
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                children: <Widget>[
                  CategoryCard(
                    pic: 'assets/images/amazon.jpeg', 
                  title: 'Doctors near ',),
                  CategoryCard(
                    pic: 'assets/images/cashe.jpeg',
                   title: 'Cashe',),
                  CategoryCard(
                    pic: 'assets/images/dominos.png', 
                  title: 'Dominos',),
                  CategoryCard(
                    pic: 'assets/images/trains.png',
                   title: 'Trains',),
                  
                 
                ],),
                
              )
            ],
          ),
    );
      
    
  }
}







class CategoryCard extends StatelessWidget {
  final String title;
  final String pic;

  const CategoryCard({
    Key? key, required this.title, required this.pic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(10),
      child: Container(
        margin:EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(offset: Offset(0, 10),
            blurRadius: 15,
            spreadRadius: -10,
            color: Colors.black
            )
          ]
    
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: Column(
              children: <Widget>[
                Image.asset(pic),
                SizedBox(height: 25,),
                Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}