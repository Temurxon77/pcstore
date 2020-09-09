import 'package:pcstore/models/Product.dart';

class Cart {
  final double total;
  //final double tax;
  final List<Product> product;
  Cart({this.product,this.total});

  double calculateTotal(){
    double productTotal = 0;
    for(int i=0;i<this.product.length;i++){
      productTotal += this.product[i].price;
    }
    return productTotal;
  }

  @override
  String toString() {
    return 'total: ${this.total}\nproducts: ${this.product.toString()}';
  }

}