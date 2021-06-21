

// ignore: camel_case_types
class Order_Item {

  String foodName;

  String restaurantName;

  String restaurantAvatarUrl;

  DateTime orderDate;
  double orderPrice;
  String orderLocationTitle ;

  bool isActive;

  Receipt receipt;


  Order_Item(
      { this.foodName,
        this.restaurantName ,
        this.restaurantAvatarUrl,
        this.orderDate,
        this.orderPrice,
        this.orderLocationTitle,
        this.isActive,
        this.receipt
      }

      );


}

class Receipt {

  String temp ;

  Receipt( {this.temp});

}

// ignore: camel_case_types
 class Order_List {

  static int activeItems = 1 , deActiveItems = 0 ;

   static List<Order_Item> inProgress = [

    Order_Item(
      restaurantName: "BurgerKing" ,
      restaurantAvatarUrl: "https://cdn.minorfood.com/uploaded/brand/logo/large/1614828210604052b2c4b7d.png" ,
      orderDate: DateTime.now(),
      orderPrice: 34.5 ,
      orderLocationTitle: "home",
      isActive: true ,
      receipt: Receipt(temp :"smoky Burger")
    )

  ];


   static List<Order_Item> done = [

   ];

}
