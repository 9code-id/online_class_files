// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/model/product_category/product_category.dart';
import 'package:hyper_ui/service/product_category_service/product_category_service.dart';
import 'package:hyper_ui/shared/widget/firebase/fire_stream.dart';

class PosCategoryFilter extends StatelessWidget {
  final String? currentCategoryName;
  final Function(String? categoryName) onTap;
  const PosCategoryFilter({
    Key? key,
    this.currentCategoryName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: FireStream(
        stream: ProductCategoryService().getSnapshots(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, obj, index) {
          ProductCategory item = ProductCategory.fromJson(obj);
          bool selected = item.productCategoryName == currentCategoryName;
          return InkWell(
            onTap: () {
              if (selected) {
                onTap(null);
                return;
              }
              onTap(item.productCategoryName!);
            },
            child: Container(
              margin: const EdgeInsets.only(
                right: 12.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: selected ? Colors.black : Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Center(
                child: Text(
                  "${item.productCategoryName}",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
