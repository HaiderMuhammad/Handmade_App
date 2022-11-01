import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyFavPage extends StatelessWidget {
  const EmptyFavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.favorite_border_rounded, color: Colors.black26, size: 50,),
              Text(
                'No favorite item',
                style: GoogleFonts.roboto(color: Colors.black, fontSize: 20, height: 2),
              )
            ],
          )
      ),
    );
  }
}
