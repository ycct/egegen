class AllProducts {
  final String image;
  final String productName;
  final double productPrice;
  final double discountedPrice;
  final String storeName;
  final String info;

  AllProducts(
      {required this.image,
      required this.discountedPrice,
      required this.productName,
      required this.productPrice,
      required this.storeName,
      required this.info});
}
