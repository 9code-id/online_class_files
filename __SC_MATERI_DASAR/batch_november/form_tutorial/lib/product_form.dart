// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';

class ProductForm extends StatefulWidget {
  static Map<String, dynamic>? value;

  final Function(Map<String, dynamic> value) onValue;
  const ProductForm({
    Key? key,
    required this.onValue,
  }) : super(key: key);

  @override
  State<ProductForm> createState() => ProductFormState();
}

class ProductFormState extends State<ProductForm> {
  String? productName;
  double? price;

  @override
  void initState() {
    GetIt.I.registerSingleton<ProductFormState>(this);
    super.initState();
  }

  saveProduct(){}
  deleteProduct(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Product name",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  price = double.tryParse(value) ?? 0;
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  ProductForm.value = {
                    "product_name": productName,
                    "price": price,
                  };

                  widget.onValue({
                    "product_name": productName,
                    "price": price,
                  });
                  Navigator.pop(
                    context,
                  );
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
