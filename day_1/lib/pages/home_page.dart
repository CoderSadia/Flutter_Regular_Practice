import 'package:day_1/db/db_sqlite.dart';
import 'package:day_1/pages/new_product_page.dart';
import 'package:day_1/widgets/product_item.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => NewProductPage()
            )).then((_) {
              setState(() {


              });
            }),
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: DBSqlite.productList.map((product) => ProductItem(product)).toList(),

        
         ),

    );
  }
}
