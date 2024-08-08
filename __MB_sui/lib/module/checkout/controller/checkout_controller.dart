import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class CheckoutController extends State<CheckoutView> {
  static late CheckoutController instance;
  late CheckoutView view;

  @override
  void initState() {
    instance = this;
    products = CartController.instance.products;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
}
