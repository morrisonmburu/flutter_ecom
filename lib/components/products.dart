import 'package:flutter/material.dart';
import 'package:flutter_ecomm/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Gallado",
      "picture": "images/products/pro1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Elemento",
      "picture": "images/products/pro2.jpg",
      "old_price": 110,
      "price": 80,
    },
    {
      "name": "prestige",
      "picture": "images/products/pro3.jpg",
      "old_price": 110,
      "price": 80,
    },
    {
      "name": "Aventador",
      "picture": "images/products/pro4.jpg",
      "old_price": 140,
      "price": 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  //constructor
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("hero 001"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //passing the values of the product to the product details page
                  builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_oldprice,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
