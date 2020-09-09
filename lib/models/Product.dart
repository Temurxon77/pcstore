class Product {
  final String title;
  final String description;
  final int quantity;
  final double price;

  Product({this.title,this.description,this.quantity,this.price});

  factory Product.fromJson(Map<String,dynamic> json) => new Product(
    title: json['title'],
    description: json['description'],
    quantity: json['quantity'],
    price: json['price']
  );
  Map<String,dynamic> toJson() =>{
    'title': this.title,
    'description': this.description,
    'quantity': this.quantity,
    'price': this.price
  };
}