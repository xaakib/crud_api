import 'package:crud_api/model/product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static Future<List<Product>> fetchProducts() async {
    var response =
        await client.get("https://jsonplaceholder.typicode.com/posts");

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
