import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static Dio? dio;

  int x = 0;
  static init() {
    BaseOptions options = new BaseOptions(
      baseUrl: 'https://masiratiapi.azurewebsites.net/',
      // baseUrl: 'https://devpos.dexef.com/',
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
    // options.connectTimeout = 60 * 1000; //60 sec
    // options.receiveTimeout = 60 * 1000; //60 sec
  }

  static Future<Response> getData({
    @required String? url,
    @required Map<String, dynamic>? query,
  }) async {
    return await dio!.get(
      url!,
      queryParameters: query,
    );
  }

  void getName() async {}

  static Future<Response> getPostData({
    @required String? url,
    @required dynamic data,
    Map<String, dynamic>? query,
    CancelToken? cancelToken,
    // Map<String, dynamic>? query1,
  }) async {
    // if (query != null) if (query1 != null) query.addAll(query1);
    String token = 'hassan';
    return await dio!.post(
        url!,
        queryParameters: query,
        data: data,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        cancelToken: cancelToken

      //   options: Options(headers: {
      //     "Content-Type": "application/json",
      //     "Authorization":
      //     "Bearer $token",
      //   })

    );
  }

  // delete
  static Future<Response> deleteData({
    @required String? url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.delete(
      url!,
      queryParameters: query,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
    );
  }

  // Patch
  static Future<Response> patchData({
    @required String? url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.patch(
      url!,
      queryParameters: query,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
    );
  }
  // put
  static Future<Response> putData({
    @required String? url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.put(
      url!,
      queryParameters: query,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
    );
  }
}
