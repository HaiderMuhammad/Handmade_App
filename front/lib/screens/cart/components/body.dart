// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:front/models/product.dart';
import 'package:front/screens/cart/components/cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: Dismissible(
            key: Key(
              Product.products[index].id.toString(),
            ),
            direction: DismissDirection.endToStart,
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffcf3643,).withOpacity(0.45),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.delete, color: Colors.white),     
                  ],
                ),
              ),
            ),
            confirmDismiss: (DismissDirection direction) async {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Delete Confirmation'),
                    content: const Text(
                        'Are you sure you want to delete this item?'),
                    actions: [
                      FlatButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Delete')),
                      FlatButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
            },
            onDismissed: (DismissDirection direction) {
              if (direction == DismissDirection.startToEnd) {
                print('Add to favorite');
              } else {
                print('Remove item');
              }
              setState(() {
                Product.products.removeAt(index);
              });
            },
            child: CartItemCard(
              product: Product.products[index],
            ),
          ),
        ),
      ),
    );
  }
}