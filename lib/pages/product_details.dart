import 'package:flutter/material.dart';
import 'package:flutter_ecomm/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  //constructor
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.01,
        backgroundColor: Colors.cyan,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('ShopApp')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 191.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ========= the first buttons =========

          Row(
            children: <Widget>[
              // the size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black54,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "Size",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black54,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "Color",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black54,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "Qty",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //===== second button =====

          Row(
            children: <Widget>[
              // the size button
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.cyan,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),

              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.cyan,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.cyan,
                  ),
                  onPressed: () {}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Produc Details"),
            subtitle: new Text(
                "Some experts say that masticating juicers are best because they juice more efficiently and produce more juice. Instead of spinning like a centrifugal juicer, a masticating juicer grinds vegetables and fruits at low speeds to separate the juice from the fiber. Another benefit of using a masticating juicer is that they tend to be easier to clean than centrifugal juicers. Anything that reduces the amount of work it takes to follow a diet is a benefit. However, on the downside, masticating juicers tend to cost more than centrifugal juicers."),
          ),
          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product name",
                  style: new TextStyle(color: Colors.black54),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product brand",
                  style: new TextStyle(color: Colors.black54),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand x"),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product condition",
                  style: new TextStyle(color: Colors.black54),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("condition x"),),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
          ),

          // Similar Products Section
          Container(
            height: 360.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }

}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  //constructor
  Similar_Single_prod({
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



