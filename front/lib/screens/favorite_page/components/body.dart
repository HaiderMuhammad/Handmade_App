import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:front/models/product.dart';

import 'wishlist_cart.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Slidable(
              key: Key(
                Product.products[index].id.toString(),
              ),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                          '${Product.products[index].productName} has been removed from favorite'),
                    ),
                  );
                  setState(() {
                    Product.products.removeAt(index);
                  });
                }),
                children: [
                  SlidableAction(
                    onPressed: ((context) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                              '${Product.products[index].productName} has been removed from favorite'),
                        ),
                      );
                      setState(() {
                        Product.products.removeAt(index);
                      });
                    }),
                    backgroundColor: const Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Remove from favorite',
                  ),
                ],
              ),
              child: FavoriteCard(product: Product.products[index],),
            ),
          );
        },
      ),
    );
  }
}