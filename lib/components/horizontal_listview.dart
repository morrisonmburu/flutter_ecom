import 'package:flutter/material.dart';

//stateless widget
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/categories/cat1.jpg',
            image_caption: 'batman',
          ),

          Category(
            image_location: 'images/categories/cat2.jpg',
            image_caption: 'peace',
          ),

          Category(
            image_location: 'images/categories/cat3.jpg',
            image_caption: 'fist',
          ),

          Category(
            image_location: 'images/categories/cat4.jpg',
            image_caption: 'nebula',
          ),

          Category(
            image_location: 'images/categories/cat5.jpg',
            image_caption: 'ocean',
          ),

          Category(
            image_location: 'images/categories/cat6.jpg',
            image_caption: 'gallado',
          ),

          Category(
            image_location: 'images/categories/cat7.jpg',
            image_caption: 'robocop',
          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  //constructor
  Category({
    this.image_location,
    this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width: 100.0, height: 90.0,),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption),)
      ),
    ),
    ),
    );
  }
}

