import 'dart:convert';

import 'package:api_world/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as hhtp;

class LastExample extends StatefulWidget {
  const LastExample({super.key});

  Future<ProductModel> getProductsApi() async {
    final response = await hhtp.get(
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
  State<LastExample> createState() => _LastExampleState();
}

class _LastExampleState extends State<LastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Api World')),
      body: Column(children: []),
    );
  }
}
