// import 'dart:convert';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:hadis/screens/main_screen/model/home_model.dart';


class APIProvider {

    // void getBook({
    //     Function()? beforeSend, 
    //     Function(List<Books> books)? onSuccess, 
    //     Function(dynamic error)? onError,})
    // {
    //     ApiRequest(url: 'https://api.hadith.sutanlab.id/books', ).get(
    //         beforeSend: () => {if(beforeSend != null) beforeSend()},
    //         onSuccess: (data) {
    //             // onSuccess((data as List).map((postJson) => Books.fromJson(postJson)).toList());
    //             print("dapat");
    //         },
    //         onError: (error) => {if(onError != null) onError(error)},
    //
    //     );
    //     
    //
    //
    // }
    // final Dio dio = Dio();
    // static const baseURL = "https://api.hadith.sutanlab.id/books";
    //
    // Future<Books> getBook() async {
    //     try {
    //         final response = await dio.get(baseURL);
    //         debugPrint(response.toString());
    //         return Books.fromJson(response.data);
    //
    //     }on DioError catch (e) {
    //         debugPrint("Status code: ${e.response?.statusCode.toString()}");
    //         throw Exception("Failed to load post");
    //
    //     }
    // }


}
