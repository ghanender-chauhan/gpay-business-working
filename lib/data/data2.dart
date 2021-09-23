class FinanceCard{
  final String name;
  final String imageurl;
  final String subtitile;
  final String subTrend;

  FinanceCard({required this.name, required this.imageurl, required this.subtitile, required this.subTrend});

}


List<FinanceCard> cardsSecond =[
  FinanceCard(
    name:"Cashe",
    imageurl: 'assets/images/cashe.jpeg', 
    subtitile: 'Get 200 Rs Cashback on first order',
     subTrend: 'Short-term Instant Credit',
    
    ),
  FinanceCard(
    name:"Mint",
    imageurl: 'assets/images/mint.png',
     subtitile: 'First time User Get 100 Rs cashback', 
     subTrend: 'Consult Doctors Online',
    
    ),
  FinanceCard(
    name:"Smart Finance",
    imageurl: 'assets/images/smart.png',
     subtitile: 'Get 200 Rs Voucher', 
     subTrend: '',
    
    ),
  FinanceCard(
    name:"Tax2Win",
    imageurl: 'assets/images/tax2win.png',
     subtitile: 'Get 200 Rs Cashback on first order', subTrend: '',
    
    ),
 
 
];



class FinanceOrder{
  
 final String subHeading;
 final String orderImage;
 final String orderName;

  FinanceOrder({required this.subHeading, required this.orderImage, required this.orderName});

}






  
List<FinanceOrder> orderSecond=[
  FinanceOrder(
  orderImage: 'assets/images/5paisalogo.png', 
  orderName: '5Paisa', 
  subHeading: 'Stock Market Trading'
  ),

  FinanceOrder(
  orderImage: 'assets/images/cashelogo.png', 
  orderName: 'CASHe', 
  subHeading: 'Short-term Instant Credit'
  ),

  FinanceOrder(
  orderImage: 'assets/images/preferlogo.png', 
  orderName: 'Prefr Loans', 
  subHeading: 'Instant Loans'
  ),

  FinanceOrder(
  orderImage: 'assets/images/taxlogo.png', 
  orderName: 'Tax2Win', 
  subHeading: 'efile ITR'
  ),
  
  
];

  