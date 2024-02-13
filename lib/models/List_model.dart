class ListModel {
  String? name;
  String? subtitle;
  final String UrlImage;

  ListModel({required this.name, required this.subtitle, required this.UrlImage});
}

final List<ListModel> list = [
  ListModel(
      name: "Ambrosia Hotel & Restaurant",
      subtitle: "kazi Deiry, Taiger Chittagong",
      UrlImage:
      "https://b.zmtcdn.com/data/pictures/7/110007/0d610550525b4c40c52b14e76499e62b.jpg?"),
  ListModel(
      name: "Tava Restaurant ",
      subtitle: "Zakir Hossain Rd, Chittagong",
      UrlImage:
      "https://media-cdn.tripadvisor.com/media/photo-s/09/f7/27/c5/tava-restaurant.jpg"),
  ListModel(
      name: "Haatkhola",
      subtitle: "6 Surson Road, Chittagong",
      UrlImage:
      "https://panoramicrestaurant.com/wp-content/uploads/2023/07/2TH08812-1-scaled.jpg")
];