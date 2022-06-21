import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RemoteService {
  final Dio dio;
  static const String url = "https://jsonplaceholder.typicode.com/posts/2";

  RemoteService(this.dio);

  Future<dynamic> postData(data) async {

    try{
     final response = await dio.delete(
       url,
       data: data,
       // options: Options(
       //   headers: {'Content-type': 'application/json; charset=UTF-8'},
       // ),
     );
     return response.data ;

   }
   catch(error) {
      return error;

   }
  }
}
