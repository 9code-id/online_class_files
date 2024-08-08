import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/pos/state/pos_state.dart';

class PosProductListView extends StatelessWidget {
  final PosState state;
  final PosController controller;
  const PosProductListView({
    super.key,
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: state.products.length,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          var item = state.products[index];

          if (state.search.isNotEmpty) {
            if (!item.productName!
                .toLowerCase()
                .contains(state.search.toLowerCase())) return Container();
          }

          if (state.categoryName != null) {
            if (item.productCategory != state.categoryName) return Container();
          }

          return Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item.photo ?? "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 2,
                        top: 2,
                        child: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.black,
                          child: Text(
                            "${item.stock ?? 0}",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.productName ?? "-",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "\$${item.price}",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => controller.decreaseQty(item),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: Colors.grey[200],
                              child: Icon(
                                Icons.remove,
                                color: Colors.grey,
                                size: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.0,
                            ),
                            child: Text(
                              "${item.qty}",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => controller.increaseQty(item),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: Colors.grey[200],
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 16.0,
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () => controller.emptyQty(item),
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: Colors.grey[200],
                              child: Icon(
                                Icons.delete_outline,
                                color: Colors.grey,
                                size: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
