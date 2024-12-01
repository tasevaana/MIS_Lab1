class Makeup {
  int id;
  String name;
  String img;
  String details;
  int price;

  Makeup({required this.id, required this.name, required this.img, required this.details, required this.price});

  Makeup.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'],
        details = data['details'],
        price = data['price'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img, 'details': details, 'price': price};
}