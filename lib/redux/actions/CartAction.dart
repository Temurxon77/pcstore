class AddToCartSingle {
  final CartDetails cartDetails;
  AddToCartSingle({this.cartDetails});
}

class AddToCartMultiple {
  final List<CartDetails> productList;
  AddToCartMultiple({this.productList});
}

class CartDetails {
  final String productTitle;
  final int productPrice;
  final int productQuantity;
  CartDetails({this.productTitle,this.productPrice,this.productQuantity});
}