import 'package:crud_api/model/product.dart';
import 'package:crud_api/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var producList = List<Product>().obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      // ignore: deprecated_member_use
      producList.value = products;
    }
  }
}
