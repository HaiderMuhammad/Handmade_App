import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_products.dart' hide Image;
import 'package:front/screens/details_page/details.dart';




class ProductView extends StatefulWidget {
  const ProductView({Key? key, }) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  late List<ProductsModel>? productModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async {
    productModel = (await ApiServices().getUsers());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }


  @override
  Widget build(BuildContext context) {
    return productModel == null || productModel!.isEmpty
        ? const Center(
    child: CupertinoActivityIndicator(),
    )
    :
        ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: productModel!.length,
            itemBuilder: (context, index){
              return GestureDetector(
        onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context) =>
                 DetailsPage(
                  id: productModel![index].id.toString(),
                  productName: productModel![index].name.toString(),
                  price: productModel![index].price.toString(),
                  description: productModel![index].description.toString(),
                )
            )
        );
      },
      child: Container(
        height: 205,
        width: 135,
        padding: const EdgeInsets.only(left: 3,right: 3,top: 3),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: const Color(0xffF0F2F1)),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.network("http://192.168.1.105:8000${productModel![index].image![0].image}",
                fit: BoxFit.cover,
                height: 123,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 6,right: 6,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productModel![index].name.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(productModel![index].price.toString(),
                    style: const TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      height: 2
                    ),
                  ),
                  Text(productModel![index].newPrice.toString(),
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
            },
        );

  }
}
