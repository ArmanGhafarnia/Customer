import 'package:customer/inAppPages/food/Food.dart';

class Fake{
  List<Food> meno = [];
  Fake(){
    Food a = new Food(name:"hot dog",restaurantName:"arman_restaurant",picture:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png",restaurantAvatar:"https://cdn1.iconfinder.com/data/icons/supermarket-cafe-and-stores/50/42-512.png",price: 12000);
    Food b = new Food(name:"hamburger",restaurantName:"amir_restaurant",picture:"https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg",restaurantAvatar:"https://cdn1.vectorstock.com/i/1000x1000/81/30/fast-food-restaurant-and-vector-10328130.jpg",price: 15000);
    Food c = new Food(name: "pizza",restaurantName: "third_restaurant",picture: "https://www.aislac.org/wp-content/uploads/2021/01/pizza.jpg",restaurantAvatar: "https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg",price: 20000);
    meno.add(a);
    meno.add(b);
    meno.add(c);
  }

}