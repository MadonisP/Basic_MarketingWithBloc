import 'package:bloc_sample/models/product.dart';

class ProductService{
  static var products=<Product>[];

  static ProductService _singleton = ProductService._internal();

  factory ProductService(){
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll(){
    products.add(new Product(1,"Dell Laptop",6000));
    products.add(new Product(2,"Acer Laptop",8000));
    products.add(new Product(3,"Hp Laptop",7000));
    return products;
  }
}