import 'dart:convert';
import 'package:api_world/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LastExample extends StatefulWidget {
  const LastExample({super.key});

  // Future<ProductModel> getProductsApi() async {
  // final response = await http.get(
  //   Uri.parse('https://webhook.site/23ae3a43-5df4-46b2-9aed-4babbf88636e'),
  // );
  // var data = jsonDecode(response.body.toString());
  // if (response.statusCode == 200) {
  //   return ProductModel.fromJson(data);
  // } else {
  //   return ProductModel.fromJson(data);
  // }
  // }

  @override
  State<LastExample> createState() => _LastExampleState();
}

class _LastExampleState extends State<LastExample> {
  Future<ProductModel> getProductsApi() async {
    final response = await http.get(
      Uri.parse('https://webhook.site/23ae3a43-5df4-46b2-9aed-4babbf88636e'),
    );

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Api World'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder<ProductModel>(
                future: getProductsApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.data.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                snapshot.data!.data![index].shop!.name
                                    .toString(),
                              ),
                              subtitle: Text(
                                snapshot.data!.data[index].shop!.shopEmail
                                    .toString(),
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  snapshot.data!.data![index].shop!.image
                                      .toString(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .1,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    snapshot.data!.data[index].images.length,
                                itemBuilder: (context, position) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                          2.5,
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            snapshot
                                                .data!
                                                .data![index]
                                                .images![position]
                                                .toString(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Icon(
                              snapshot.data!.data![index].inWishlist! == true
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    return Text('Loading...');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
