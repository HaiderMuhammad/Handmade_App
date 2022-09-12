import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Delivery address',
            style: TextStyle(
                fontSize: 10,
                color: Color(0xffC8C8CB)
            ),
          ),
          Row(
            children:const [
              Text('Baghdad City, Al- Karrada',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}