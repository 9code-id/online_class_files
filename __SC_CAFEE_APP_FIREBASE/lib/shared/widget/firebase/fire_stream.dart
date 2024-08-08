// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStream extends StatelessWidget {
  final Stream<QuerySnapshot<Object?>>? stream;
  final Function(
    BuildContext context,
    Map<String, dynamic> item,
    int index,
  ) itemBuilder;
  final bool shrinkWrap;
  final Axis? scrollDirection;
  const FireStream({
    Key? key,
    required this.stream,
    required this.itemBuilder,
    this.shrinkWrap = false,
    this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) return const Text("Error");
        if (snapshot.data == null) return Container();
        if (snapshot.data!.docs.isEmpty) {
          return const Text("No Data");
        }
        final data = snapshot.data!;
        return ListView.builder(
          itemCount: data.docs.length,
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          scrollDirection: scrollDirection ?? Axis.vertical,
          shrinkWrap: shrinkWrap,
          itemBuilder: (context, index) {
            Map<String, dynamic> item =
                (data.docs[index].data() as Map<String, dynamic>);

            return itemBuilder(context, item, index);
          },
        );
      },
    );
  }
}

/*
//#TEMPLATE firestream
FireStream(
  stream: ProductService().getSnapshots(),
  itemBuilder: (context, item, index) {
    Product product = Product.fromJson(item);
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(
            product.photo ??
                "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
          ),
        ),
        title: Text(product.productName ?? "-"),
        subtitle: Text(product.productCategory ?? "-"),
        trailing: Text(
          "${product.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  },
),
//#END
*/
