import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/screens/details_page/product_color.dart';


class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.price, required this.description, required this.productName, required this.id}) : super(key: key);

  ApiServices api = ApiServices();
  final String id;
  final String productName;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Details Products',
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),),
        ),
        body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/tshirt.jpg'),
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.black87,
                          height: 2.5
                      ),
                    ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xff67C4A7),
                    ),
                  ),
                    const SizedBox(height: 10,),
                    const Divider(height: 3, color: Colors.grey,),
                    const ProductColors(),
                    const Divider(height: 3, color: Colors.grey,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description of Product',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87,
                              height: 2.5
                          ),
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.black87,
                              height: 1.8
                          ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                  child: MaterialButton(
                    onPressed: () {
                      api.AddToCart(id);
                    },
                    height: 55,
                    minWidth: double.infinity,
                    color: const Color(0xff67C4A7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Text("Add to Cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                  ),
                ),
                      ],
                    )
                  ],
                ),
              )
            ]
        )
    );
  }
}

