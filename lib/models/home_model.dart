class CartModel {
  String? name;
  String? subtitle;
  final String UrlImage;

  CartModel({required this.name, required this.subtitle, required this.UrlImage});
}

final List<CartModel> carts = [
  CartModel(
      name: "Chicken Biryani",
      subtitle: "Ambrosia Hotel & Restaurant",
      UrlImage:
      "https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe-500x375.jpg"),
  CartModel(
      name: "Sauce Tonkatsu ",
      subtitle: "Handi Restaurant,Chittagong",
      UrlImage:
      "https://goddesscooks.files.wordpress.com/2017/10/img_8798.jpg?w=529&h=529"),
  CartModel(
      name: "Pasta",
      subtitle: "Takeout Mirpur",
      UrlImage:
      "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/02/05/Baked-Feta-Pasta-4_s4x3.jpg.rend.hgtvcom.1280.1280.suffix/1615916524567.jpeg"),
  CartModel(
      name: "Kacchi",
      subtitle: "Kacchi Vai, Dhaka",
      UrlImage:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMuIMocAkqsORhewxRcD3HWajOfum5ndvkgg&usqp=CAU"),

];
