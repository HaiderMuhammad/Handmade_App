import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_cart_outlined, color: Colors.black26, size: 50,),
            Text(
                'No orders placed',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 20, height: 2),
            )
          ],
        )
      ),
    );
  }
}
