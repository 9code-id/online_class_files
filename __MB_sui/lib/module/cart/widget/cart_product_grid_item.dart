// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controller/cart_controller.dart';

class CartProductGridItem extends StatelessWidget {
  final Map item;
  const CartProductGridItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 160.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item["photo"],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    right: 8,
                    top: 8,
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            item["product_name"],
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            item["category"],
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
          Text(
            "\$${item["price"]}",
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => controller.increaseQty(item),
                icon: Icon(
                  MdiIcons.plusBox,
                  size: 32.0,
                ),
              ),
              SizedBox(
                width: 20.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "${item["qty"]}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => controller.decreaseQty(item),
                icon: Icon(
                  MdiIcons.minusBox,
                  size: 32.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
