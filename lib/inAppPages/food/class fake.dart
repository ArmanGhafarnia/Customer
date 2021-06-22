import 'package:customer/inAppPages/food/Food.dart';

class Fake{
  List<Food> meno = [];
  Fake(){
    Food a = new Food(name:"hot dog",restaurantName:"arman_restaurant",picture:"https://www.google.com/url?sa=i&url=https%3A%2F%2Ffa.m.wikipedia.org%2Fwiki%2F%25D9%25BE%25D8%25B1%25D9%2588%25D9%2586%25D8%25AF%25D9%2587%3AHot_dog_with_mustard.png&psig=AOvVaw2ytn3kKxQWvuDbOfi9WECb&ust=1624351009068000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCKCxzpqpqPECFQAAAAAdAAAAABAW",restaurantAvatar:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ffast-food-restaurant-and-vector-10328130&psig=AOvVaw2H4L-pAc2Bfhuyvu47MNnn&ust=1624351068365000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCLDpq7apqPECFQAAAAAdAAAAABAD",price: 12000);
    Food b = new Food(name:"hamburger",restaurantName:"amir_restaurant",picture:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.epicurious.com%2Frecipes%2Ffood%2Fviews%2Fthe-ultimate-hamburger-232191&psig=AOvVaw1mRhSATsS4WxXjZ-QeYfzn&ust=1624351683709000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCIiSg9urqPECFQAAAAAdAAAAABAD",restaurantAvatar:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ffast-food-shop-store-front-flat-style-vector-9183380&psig=AOvVaw2H4L-pAc2Bfhuyvu47MNnn&ust=1624351068365000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCLDpq7apqPECFQAAAAAdAAAAABAK",price: 15000);
    Food c = new Food(name: "pizza",restaurantName: "third_restaurant",picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.delish.com%2Fcooking%2Frecipe-ideas%2Fa25337271%2Fpaleo-pizza-recipe%2F&psig=AOvVaw1B3C57QfLCcHln1J6G9xfK&ust=1624351923719000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCMiGkM6sqPECFQAAAAAdAAAAABAD",restaurantAvatar: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alamy.com%2Frow-of-houses-with-fast-food-shop-and-toy-shop-3d-rendering-image214258256.html&psig=AOvVaw2I2hX21PiKJuK0XHQ7e6zK&ust=1624351959532000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCKj6oOKsqPECFQAAAAAdAAAAABAL",price: 20000);
    meno.add(a);
    meno.add(b);
    meno.add(c);
  }

}