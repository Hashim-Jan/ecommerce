
class ProductData{
  String productName;
  String brand;
  var price;
  var date;
  final image;
  ProductData({this.image,this.productName,this.brand,this.price,this.date});

}

List<ProductData> productList = [product1];

final product1 = ProductData(
  productName: 'Hats for woman',
  brand: 'nike',
  price: 20,
  date: 12/03/1999,
  image: '1.png',
);