import 'package:crud_api/crontroller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    print(productController.producList);
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Data From "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("data"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Obx(
                () => StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  itemCount: productController.producList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      width: 100,
                      color: Colors.white30,
                      child: Text(productController.producList[index].title),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
