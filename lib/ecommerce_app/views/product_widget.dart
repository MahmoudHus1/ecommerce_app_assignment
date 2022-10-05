import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),

                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 300,
                    child: Text(
                      product.title ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    height: 300,
                    child: Image.network(product.image ?? ""),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: Text(
                      product.description ?? "",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Price : ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.price.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        " \$",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.person, color: Colors.blue),
                                Text(
                                  product.rating!.count!.toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  product.rating!.rate!.toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                ]),
            )]
    ));
  }
}
