import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/module/pos/widget/pos_category_filter.dart';
import 'package:hyper_ui/module/pos/widget/pos_product_grid_view.dart';

import '../widget/pos_product_list_view.dart';
import '../widget/pos_search_field.dart';

class PosView extends StatefulWidget {
  const PosView({Key? key}) : super(key: key);

  @override
  State<PosView> createState() => _PosViewState();
}

class _PosViewState extends State<PosView> {
  PosController controller = PosController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosController>()) {
      GetIt.I.unregister<PosController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<PosController, PosState>(
        listener: (context, state) {},
        child: BlocBuilder<PosController, PosState>(
          builder: (context, state) {
            final bloc = context.read<PosController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosController controller,
    PosState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pos'),
        actions: [
          InkWell(
            onTap: () => controller.reset(),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PosSearchField(
            state: state,
            controller: controller,
          ),
          PosCategoryFilter(
            currentCategoryName: state.categoryName,
            onTap: (value) => controller.updateCategory(value),
          ),
          if (state.gridMode)
            PosProductGridView(
              state: state,
              controller: controller,
            ),
          if (!state.gridMode)
            PosProductListView(
              state: state,
              controller: controller,
            ),
        ],
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Text(
                  "${controller.total}",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: QButton(
              label: "Checkout",
              onPressed: () => Get.to(PosCheckoutView()),
            ),
          ),
        ],
      ),
    );
  }
}
