class Items {
  final products = [
    Item(
        id: 1,
        name: "Hotel New Sea",
        location: "Zero point",
        description:
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam",
        price: 800),
  ];
}

class Item {
  final int id;
  final String name;
  final String location;
  final String description;
  final int price;

  Item(
      {required this.id,
      required this.name,
      required this.location,
      required this.description,
      required this.price});
}
