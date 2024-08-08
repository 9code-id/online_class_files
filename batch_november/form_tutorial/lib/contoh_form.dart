// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/product_form.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/check_field/check_field.dart';
import 'package:hyper_ui/shared/widget/form/radio/radio.dart';
import 'package:hyper_ui/shared/widget/form/redfield/redfield.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field.dart';

class ProductCategory {
  final int idCategory;
  final String categoryName;
  ProductCategory({
    required this.idCategory,
    required this.categoryName,
  });
}

class ContohForm extends StatefulWidget {
  ContohForm({Key? key}) : super(key: key);

  @override
  State<ContohForm> createState() => _ContohFormState();
}

class _ContohFormState extends State<ContohForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController(
    text: "demo@gmail.com",
  );
  TextEditingController passwordController = TextEditingController(
    text: "123456",
  );

  String? email;
  String? password;

  /*
  1. Mengambil nilai dengan controller
  2. Mengambil nilai dari Event, onChanged, onSubmitted, onSelected
  */

  String? gender;
  int selectedIndex = 0;

  List<Map<String, dynamic>> items = [
    {
      "label": "Flutter",
      "value": "Flutter",
    },
    {
      "label": "Java",
      "value": "Java",
      "checked": true,
    },
    {
      "label": "C#",
      "value": "C#",
    }
  ];

  bool isAdmin = false;
  bool isDarkMode = false;
  bool guestMode = false;

  void test() {
    //Format 1
    isAdmin = false;
    setState(() {});

    //Format 2
    setState(() {
      isAdmin = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("ContohForm"),
    //     actions: [],
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       padding: EdgeInsets.all(20.0),
    //       child: Column(
    //         children: [
    //           QRadioField(
    //             label: "Gender",
    //             validator: Validator.atLeastOneitem,
    //             items: [
    //               {
    //                 "label": "Female",
    //                 "value": 1,
    //               },
    //               {
    //                 "label": "Male",
    //                 "value": 2,
    //               }
    //             ],
    //             onChanged: (value, label) {},
    //           ),
    //           QCheckField(
    //             label: "Club",
    //             validator: Validator.atLeastOneitem,
    //             items: [
    //               {
    //                 "label": "Persib",
    //                 "value": 101,
    //                 "checked": false,
    //               },
    //               {
    //                 "label": "Persikabo",
    //                 "value": 102,
    //                 "checked": true,
    //               }
    //             ],
    //             onChanged: (values, ids) {},
    //           ),
    //           SegmentedButton(
    //             showSelectedIcon: false,
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: Colors.white,
    //               padding: const EdgeInsets.all(0.0),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(8.0),
    //               ),
    //             ),
    //             segments: <ButtonSegment>[
    //               ButtonSegment(
    //                 value: "Day",
    //                 label: Text(
    //                   'Day',
    //                   style: TextStyle(
    //                     color: Colors.grey[700],
    //                     fontSize: 12.0,
    //                   ),
    //                 ),
    //               ),
    //               ButtonSegment(
    //                 value: "Month",
    //                 label: Text(
    //                   'Month',
    //                   style: TextStyle(
    //                     color: Colors.grey[700],
    //                     fontSize: 12.0,
    //                   ),
    //                 ),
    //               ),
    //               ButtonSegment(
    //                 value: "Year",
    //                 label: Text(
    //                   'Year',
    //                   style: TextStyle(
    //                     color: Colors.grey[700],
    //                     fontSize: 12.0,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //             selected: {"Month"},
    //             onSelectionChanged: (Set newSelection) {},
    //           ),
    //           ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: Colors.blueGrey,
    //             ),
    //             onPressed: () async {
    //               // Navigator.push(
    //               //   context,
    //               //   MaterialPageRoute(builder: (context) => ProductForm()),
    //               // );

    //               //dialog
    //               //navigasi

    //               // 1. melalui argument di navigator
    //               // 2. melalui event
    //               // 3. melalui static variable
    //               // 4. melalui Service Locator (GetIt, bkin sendiri)

    //               await showDialog<void>(
    //                 context: context,
    //                 barrierDismissible: true,
    //                 builder: (BuildContext context) {
    //                   return Container(
    //                     padding: const EdgeInsets.all(20.0),
    //                     child: ProductForm(
    //                       onValue: (value) {
    //                         // log("value: $value");
    //                       },
    //                     ),
    //                   );
    //                 },
    //               );

    //               // log("${ProductForm.value}");

    //               var productFormState = GetIt.I<ProductFormState>();
    //               log("productFormState: ${productFormState.price}");

    //               productFormState.deleteProduct();

    //               log("Form ditutup!");
    //             },
    //             child: const Text("Tampilkan Popup Form"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text("ContohForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                // form_switch
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Is Admin",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Switch(
                      value: isAdmin,
                      onChanged: (value) {
                        isAdmin = value;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Dark mode",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Switch(
                      value: isDarkMode,
                      onChanged: (value) {
                        isDarkMode = value;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Guest mode",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: guestMode,
                      onChanged: (value) {
                        log("value: $value");
                        guestMode = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                SwitchListTile(
                  title: Text("Guest Mode"),
                  value: guestMode,
                  onChanged: (value) {
                    log("value: $value");
                    guestMode = value!;
                    setState(() {});
                  },
                ),
                //form_dropdown
                LayoutBuilder(builder: (context, constraint) {
                  List<String> itemStringList = ["Female", "Male", "XXX"];
      
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: "Gender",
                          errorText: field.errorText,
                          helperText: "Your gender",
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: false,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: gender,
                              icon: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 24.0,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color:
                                    Theme.of(context).textTheme.bodyMedium!.color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              onChanged: (String? newValue) {
                                log("newValue: $newValue");
                                gender = newValue;
                                setState(() {});
                              },
                              items: itemStringList
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.0,
                                      vertical: 0.0,
                                    ),
                                    child: Text(
                                      value,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
                SizedBox(
                  height: 20.0,
                ),
                LayoutBuilder(builder: (context, constraint) {
                  List<Map<String, dynamic>> items = [
                    {
                      "id": 1,
                      "gender_name": "Male",
                      "checked": true,
                    },
                    {
                      "id": 2,
                      "gender_name": "Female",
                      "checked": true,
                    },
                    {
                      "id": 3,
                      "gender_name": "XXX",
                      "checked": true,
                    }
                  ];
      
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: "Gender",
                          errorText: field.errorText,
                          helperText: "Your gender",
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: false,
                            child: DropdownButton<Map<String, dynamic>>(
                              isExpanded: true,
                              value: items[selectedIndex],
                              icon: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 24.0,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color:
                                    Theme.of(context).textTheme.bodyMedium!.color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              onChanged: (Map<String, dynamic>? newValue) {
                                var index = items.indexWhere(
                                    (e) => e["id"] == newValue!["id"]);
                                selectedIndex = index;
                                setState(() {});
                              },
                              items: List.generate(
                                items.length,
                                (index) {
                                  var item = items[index];
                                  return DropdownMenuItem<Map<String, dynamic>>(
                                    value: item,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0.0,
                                        vertical: 0.0,
                                      ),
                                      child: Text(
                                        item["gender_name"],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
                SizedBox(
                  height: 20.0,
                ),
                LayoutBuilder(builder: (context, constraint) {
                  List<ProductCategory> items = [
                    ProductCategory(
                      idCategory: 1,
                      categoryName: "Rokok",
                    ),
                    ProductCategory(
                      idCategory: 2,
                      categoryName: "Sembako",
                    ),
                    ProductCategory(
                      idCategory: 3,
                      categoryName: "Air",
                    ),
                  ];
      
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: "Gender",
                          errorText: field.errorText,
                          helperText: "Your gender",
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: false,
                            child: DropdownButton<ProductCategory>(
                              isExpanded: true,
                              value: items[selectedIndex],
                              icon: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 24.0,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color:
                                    Theme.of(context).textTheme.bodyMedium!.color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              onChanged: (ProductCategory? newValue) {
                                var index = items.indexWhere(
                                    (e) => e.idCategory == newValue!.idCategory);
                                selectedIndex = index;
                                setState(() {});
                              },
                              items: List.generate(
                                items.length,
                                (index) {
                                  var item = items[index];
                                  return DropdownMenuItem<ProductCategory>(
                                    value: item,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0.0,
                                        vertical: 0.0,
                                      ),
                                      child: Text(
                                        item.categoryName,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
                SizedBox(
                  height: 20.0,
                ),
                LayoutBuilder(builder: (context, constraint) {
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          errorText: field.errorText,
                          border: InputBorder.none,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var item = items[index];
      
                            return CheckboxListTile(
                              title: Text("${item["label"]}"),
                              value: item["checked"] ?? false,
                              onChanged: (value) {
                                log("value: $value");
                                //Jika null, kita atur jadi false
                                items[index]["checked"] ??= false;
                                items[index]["checked"] = value;
                                setState(() {});
                                field.didChange(true);
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 12.0,
        ),
        child: ElevatedButton.icon(
          icon: Icon(Icons.save),
          label: Text("Save"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () async {
            bool isValid = formKey.currentState!.validate();
            if (!isValid) {
              //bottomsheet
              return;
            }

            log("gender: ${gender}");
          },
        ),
      ),
    );
  }
}
