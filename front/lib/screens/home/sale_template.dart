import 'package:flutter/material.dart';

class SaleTemplate extends StatelessWidget {
  const SaleTemplate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,bottom: 16),
      child: Container(
        height: 144,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: const Color(0xffF0F2F1)),
          image: const DecorationImage(
            image: AssetImage('assets/images/sale.png'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25,top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('SALE',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xffE97639)
              ),
              ),
              const SizedBox(height: 4,),
              const Text('UPTO',
              style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )
                    ),
              RichText(
                text: const TextSpan(
                text: '60%',
                style: TextStyle(
                  color: Color(0xffE97639),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                children:<TextSpan> [
                  TextSpan(
                    text: 'OFF',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              ),
              ),
              const SizedBox(height: 16,),
              const Text('School Colections',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
