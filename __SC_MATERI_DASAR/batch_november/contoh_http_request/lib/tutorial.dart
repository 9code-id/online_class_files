import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:hyper_ui/blog_response.dart';
import 'package:hyper_ui/service/blog_service/blog_service.dart';

void main() async {
  // var response = await Dio().get(
  //   "https://capekngoding.com/demo/api/blogs",
  //   options: Options(
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   ),
  // );
  // Map obj = response.data;
  // List blogs = obj["data"];
  // print(blogs.length);

  // for (var blog in blogs) {
  //   print(blog["id"]);
  //   print(blog["title"]);
  //   print("-----");
  // }

  // var response = await Dio().post(
  //   "https://capekngoding.com/demo/api/blogs",
  //   options: Options(
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   ),
  //   data: {
  //     "title": "Tutorial MySQL",
  //     "content": "-",
  //   },
  // );
  // Map obj = response.data;
  // print(obj["data"]["id"]);

  // var id = 7; //
  // var response = await Dio().put(
  //   "https://capekngoding.com/demo/api/blogs/$id",
  //   options: Options(
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   ),
  //   data: {
  //     "title": "Tutorial Riverpod",
  //     "content": "-",
  //   },
  // );
  // Map obj = response.data;
  // print(obj["data"]["id"]);

  // var id = 8;
  // var response = await Dio().delete(
  //   "https://capekngoding.com/demo/api/blogs/$id",
  //   options: Options(
  //     headers: {
  //       "Content-Type": "application/json",
  //     },
  //   ),
  // );
  // print(response.statusCode);

  // var list = await BlogService().getAll();

  // await BlogService().create(
  //   title: "Contoh blog",
  //   content: "xxx",
  // );

  // await BlogService().update(
  //   id: 9,
  //   title: "Tutorial VB.NET",
  //   content: "xxx",
  // );

  // await BlogService().delete(
  //   id: 9,
  // );

  var blogs = await BlogService().getAll();
  for (var blog in blogs) {
    print(blog.id);
    print(blog.title);
  }
}
