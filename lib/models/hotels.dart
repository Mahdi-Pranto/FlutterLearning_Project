class HotelModel {
  int? id;
  String? name;
  String? location;
  String? description;
  int? price;

  HotelModel(this.id, this.name, this.location, this.description, this.price);

  HotelModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    location = map["location"];
    description = map["description"];
    price = map["price"];
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "location": location,
      "description": description,
      "price": price
    };
  }
}
