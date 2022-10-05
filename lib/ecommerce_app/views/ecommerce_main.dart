import 'package:ecommerce_app/ecommerce_app/models/offers.dart';
import 'package:ecommerce_app/ecommerce_app/views/offers_widget.dart';
import 'package:ecommerce_app/ecommerce_app/views/product_widget.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

void main() {
  runApp(MaterialApp(
    home: ECommerceMain(),
  ));
}

class ECommerceMain extends StatelessWidget {
  late List<Product> p;
  late List<Offers> o;
  ECommerceMain() {
    p = Product.convertToList();
    o = Offers.convertToList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: const Text('Online Store'),
          ),
          shadowColor: Colors.amber,
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    'Offers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: o.length,
                    itemBuilder: (context, index) {
                      return OffersWidget(o[index]);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: p.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(p[index]);
                    },
                  ),
                )
              ],
            )));
  }
}
