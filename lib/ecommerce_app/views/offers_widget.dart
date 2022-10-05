import 'package:ecommerce_app/ecommerce_app/models/offers.dart';
import 'package:flutter/material.dart';

class OffersWidget extends StatelessWidget {
  Offers offers;
  OffersWidget(this.offers);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red.withOpacity(0.3),
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(30.0),
            child: Row(children: [
              SizedBox(
                width: 250,
                height: 200,
                child: Image.network(offers.image ?? ""),
              ),
              Column(
                children: [
                  SizedBox(
                    child: Text(
                      offers.name ?? "",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
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
                        offers.price.toString(),
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
                    ],
                  ),
                ],
              ),
            ]),
          )
        ]));
  }
}
