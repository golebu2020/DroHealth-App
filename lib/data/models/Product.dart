class Product {
  String title;
  String subtitle;
  String description;
  String company;
  String size;
  String consitutents;
  String dispensed;
  String id;
  int price;
  String picture;

  Product(
      {this.title,
        this.subtitle,
        this.description,
        this.company,
        this.size,
        this.consitutents,
        this.dispensed,
        this.id,
        this.price,
        this.picture});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    company = json['company'];
    size = json['size'];
    consitutents = json['consitutents'];
    dispensed = json['dispensed'];
    id = json['id'];
    price = json['price'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['company'] = this.company;
    data['size'] = this.size;
    data['consitutents'] = this.consitutents;
    data['dispensed'] = this.dispensed;
    data['id'] = this.id;
    data['price'] = this.price;
    data['picture'] = this.picture;
    return data;
  }
}