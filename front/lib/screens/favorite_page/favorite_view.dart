import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/api_call/product_api/api_methods.dart';
import 'package:front/network_model/all_favorite.dart' hide Image;


class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {

  late List<FavoriteModel>? favModel = [];
  ApiServices api = ApiServices();

  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async {
    favModel = (await ApiServices().getFav());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return favModel == null || favModel!.isEmpty
        ? const Center(
      child: CupertinoActivityIndicator(),
    )
        :
    ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: favModel!.length,
        itemBuilder: (context, index){
          return Padding(
              padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image.network("http://192.168.1.105:8000${favModel![index].product!.images![0].image}",
                          width: 70,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  favModel![index].product!.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 0.1
                                  ),
                                ),
                                IconButton(
                                    onPressed: (){
                                      setState(() {
                                        api.DeleteFav(favModel![index].id);
                                      });
                                    },
                                    padding: const EdgeInsets.only(top: 20),
                                    icon: const Icon(Icons.delete_forever,
                                      color: Color(0xff939393),)
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  favModel![index].product!.price.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff67C4A7),


                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding:EdgeInsets.only(right: 10, left: 5, top: 20),
                    child: Divider(thickness: 0.4, color: Colors.grey,),
                  )
                ],
              )
          );
        }
    );
  }
}