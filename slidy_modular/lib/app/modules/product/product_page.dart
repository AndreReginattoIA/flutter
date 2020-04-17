import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatefulWidget {
  final String title;
  const ProductPage({Key key, this.title = "Product"}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 3,
          )
        ),
        onPressed: () {
          Modular.to.pushNamed('/Products/Register');
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Container(
          height: 50.00,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
