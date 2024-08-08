/*
1. Bisa di jalankan di console tanpa problem
x tidak boleh ada kode flutter di dalamnya
  material.dart
x tidak boleh ada state management
  setState((){})
x tidak boleh ada context

2. di layer View/Feature/Module 
Tidak mengimport dio.dart atau http.dart sama sekali
*/
import 'package:dio/dio.dart';

class TodoService {
  Future<List> getAll() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/todos",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List list = obj["data"];
    return list;
  }

  Future create({
    required String title,
    required String content,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/demo/api/todos",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "title": title,
        "content": content,
      },
    );
    return response;
  }

  Future update({
    required int id,
    required String title,
    required String content,
  }) async {
    var response = await Dio().put(
      "https://capekngoding.com/demo/api/todos/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "title": title,
        "content": content,
      },
    );
    return response;
  }

  Future delete({
    required int id,
  }) async {
    var response = await Dio().delete(
      "https://capekngoding.com/demo/api/todos/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    return response;
  }
}
