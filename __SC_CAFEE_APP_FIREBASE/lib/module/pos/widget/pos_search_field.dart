import 'package:flutter/material.dart';
import 'package:hyper_ui/module/pos/controller/pos_controller.dart';
import 'package:hyper_ui/module/pos/state/pos_state.dart';

class PosSearchField extends StatelessWidget {
  final PosState state;
  final PosController controller;
  const PosSearchField({
    super.key,
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              key: Key("text_${state.search}"),
              initialValue: state.search,
              decoration: InputDecoration(
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blueGrey[900],
                ),
                suffixIcon: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.sort,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
              onFieldSubmitted: (value) => controller.updateSearch(value),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          InkWell(
            onTap: () => controller.updateMode(),
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Icon(
                state.gridMode ? Icons.grid_on : Icons.list,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
