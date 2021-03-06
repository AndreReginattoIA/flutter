import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/components/my_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_floating_action_button.dart';
import 'package:slidy_modular/app/models/product_model.dart';
import 'package:slidy_modular/app/modules/product/product_controller.dart';
import 'package:slidy_modular/app/modules/product/product_module.dart';
import 'package:slidy_modular/app/modules/product/product_repository.dart';

class ProductPage extends StatefulWidget {
  final String title;
  const ProductPage({Key key, this.title = "Product"}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  var repo = ProductModule.to.get<ProductRepository>();
  Stream<List<ProductModel>> products;

  @override
  initState() {
    super.initState();
    products = repo.allProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<ProductModel>>(
        stream: products,
        builder: (context, snapshot){
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(snapshot.data[index].description),
              );
            }
          );
        },
      ),
      floatingActionButton: MyFloatActionButton('/Product/Register'),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}