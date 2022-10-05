import 'offers_data.dart';

class Offers{
  String? image;
  String? name;
  num? price;

  Offers.fromMap(Map<String, dynamic> map) {// Named contructor
    price = map['price'];
    image = map['image'];
    name = map['name'];
  }
  static List<Offers> convertToList() {
  List<Offers> o = [];
  for (var element in offersData) {
    Offers n = Offers.fromMap(element);
    o.add(n);
  }
  return o;
}

}