import 'package:dio/dio.dart';

class ProductService {
  Future<List<Map<String, dynamic>>> getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future addProduct({
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      },
    );
  }

  Future updateProduct({
    required int id,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      },
    );
  }

  Future deleteProduct({
    required int id,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }

  Future deleteAll() async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/action/delete-all",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
