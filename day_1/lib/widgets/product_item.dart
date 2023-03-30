import 'dart:io';


import 'package:flutter/material.dart'; 


class ProductItem extends StatefulWidget {
  final Product product;
  ProductItem(this.product);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class Product {
  String get imagePath => 'null';
  
  String get name => 'null';
  
  get price => null;
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      elevation: 5,
      child: Column(
        children: <Widget>[
          Image.file(File(widget.product.imagePath), height: 50, width: double.infinity, fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.product.name, style: TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tk.${widget.product.price}', style: TextStyle(fontSize: 14),),
          ),
        ],
      ),
    );
  }
}
