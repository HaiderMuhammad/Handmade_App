import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
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
            children:[
              const Text('Baghdad City, Al- Karrada',
            style: TextStyle(
            fontSize: 12,
            color: Colors.black
            ),
            ),
            SizedBox(
              height: 14,
              width: 14,
              child: IconButton
              (
                onPressed: (){},
                icon: const Icon(Icons.expand_more,
                size: 16,),
                padding: const EdgeInsets.all(0),
                )
                ),
            ],
          )
        ],
      ),
    );
  }
}