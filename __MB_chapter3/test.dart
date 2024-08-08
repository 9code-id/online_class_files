import 'dart:mirrors';

class MyClass {
  // Exercise 1: createProduct
  Future<bool> createProduct(Map<String, dynamic> product) async {
    return Future.value(true);
  }

  // Exercise 2: updateProduct
  Future<bool> updateProduct(Map<String, dynamic> product) async {
    return Future.value(true);
  }

  // Exercise 3: isProductAvailable
  bool isProductAvailable(Map<String, dynamic> product) {
    return product.containsKey('available') ? product['available'] : false;
  }

  // Exercise 4: getProductName
  String getProductName(Map<String, dynamic> product) {
    return product.containsKey('name') ? product['name'] : 'Unknown';
  }

  // Exercise 5: filterList
  List<String> filterList(
      List<String> items, bool Function(String) filterFunction) {
    return items.where(filterFunction).toList();
  }
}

bool hasMatchingFunction(ClassMirror classMirror, String functionName,
    Type returnType, List<Type> parameterTypes) {
  Symbol methodName = Symbol(functionName);

  bool match = false;
  classMirror.declarations.forEach((symbol, declaration) {
    if (symbol == methodName && declaration is MethodMirror) {
      if (declaration.returnType.reflectedType == returnType) {
        if (_compareParameterTypes(declaration.parameters, parameterTypes)) {
          match = true;
        }
      }
    }
  });

  return match;
}

bool _compareParameterTypes(
    List<ParameterMirror> parameters, List<Type> expectedTypes) {
  if (parameters.length != expectedTypes.length) {
    return false;
  }

  for (int i = 0; i < parameters.length; i++) {
    if (parameters[i].type.reflectedType != expectedTypes[i]) {
      return false;
    }
  }

  return true;
}

void main() {
  ClassMirror classMirror = reflectClass(MyClass);

  int point = 0; // Inisialisasi variabel point

  // Exercise 1
  String functionName1 = 'createProduct';
  Type returnType1 = Future<bool>;
  List<Type> parameterTypes1 = [Map<String, dynamic>];
  bool matchingFunction1 = hasMatchingFunction(
      classMirror, functionName1, returnType1, parameterTypes1);
  if (matchingFunction1) {
    point++; // Tambahkan point jika jawaban benar
  }

  // Exercise 2
  String functionName2 = 'updateProduct';
  Type returnType2 = Future<bool>;
  List<Type> parameterTypes2 = [Map<String, dynamic>];
  bool matchingFunction2 = hasMatchingFunction(
      classMirror, functionName2, returnType2, parameterTypes2);
  if (matchingFunction2) {
    point++; // Tambahkan point jika jawaban benar
  }

  // Exercise 3
  String functionName3 = 'isProductAvailable';
  Type returnType3 = bool;
  List<Type> parameterTypes3 = [Map<String, dynamic>];
  bool matchingFunction3 = hasMatchingFunction(
      classMirror, functionName3, returnType3, parameterTypes3);
  if (matchingFunction3) {
    point++; // Tambahkan point jika jawaban benar
  }

  // Exercise 4
  String functionName4 = 'getProductName';
  Type returnType4 = String;
  List<Type> parameterTypes4 = [Map<String, dynamic>];
  bool matchingFunction4 = hasMatchingFunction(
      classMirror, functionName4, returnType4, parameterTypes4);
  if (matchingFunction4) {
    point++; // Tambahkan point jika jawaban benar
  }

  // Exercise 5
  String functionName5 = 'filterList';
  Type returnType5 = List<String>;
  List<Type> parameterTypes5 = [List<String>, bool];
  bool matchingFunction5 = hasMatchingFunction(
      classMirror, functionName5, returnType5, parameterTypes5);
  if (matchingFunction5) {
    point++; // Tambahkan point jika jawaban benar
  }

  // Output total point
  print('Total Point: $point');
}
