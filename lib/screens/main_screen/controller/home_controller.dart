import "dart:convert";
import "package:get/get.dart";
import "package:flutter/material.dart";
import "package:hadis/screens/main_screen/model/home_model.dart";
import "package:http/http.dart" as httpUsing;
// import "package:hadis/services/provider.dart";
// import 'package:dio/dio.dart';



class HomeController extends GetxController {

    var homeInfo = LiveHomeInfo(
        code: '00',
        message: '00 books sent',
        dataHadis: [
            DataHadis(
                name: "HR Daud",
                id: "Abu-Daud",
                available: "4419",
            ),
            DataHadis(
                name: "HR Ahmad",
                id: "ahmad",
                available: "2419",
            ),
        ],
    ).obs;


    Future<void> getLiveStatusFromApi() async {
        try{
            final url = "https://api.hadith.sutanlab.id/books";

            final response = await httpUsing.get(Uri.parse(url));

            if (response == null) {
                return;
            }
            // print(response.body);

            final List<DataHadis> _dataHadis = [];
            
            Map<String, dynamic> extractedData = 
                    json.decode(response.body) as Map<String, dynamic>;


            extractedData['data'].forEach((eachData){
                _dataHadis.add(
                    DataHadis(
                        name: eachData['name'] ?? '',
                        id: eachData['id'] ?? '',
                        available: eachData['available'] ?? '',
                    ),
                );
                update();
            });


            final homeInfo = LiveHomeInfo(
                code: extractedData['code'] ?? '',
                message: extractedData['message'] ?? '',
                dataHadis: _dataHadis,
            );


            this.homeInfo.update((val){
                val!.code = homeInfo.code;
                val.message = homeInfo.message;
                val.dataHadis = homeInfo.dataHadis;
            });






        } catch(err) {
            Get.snackbar(
                "Error",
                "Problem in fetching from the server",
                colorText: Colors.red,
                backgroundColor: Colors.white,
                snackPosition: SnackPosition.BOTTOM,
            );
        }
    }


    // @override
    // void onInit() {
    //     super.onInit();
        // getBookList();
    // }

    // void getBookList() async {
    //     APIProvider().getBook(
    //         onSuccess: (posts) {
    //            postBook.addAll(posts); 
    //            isLoading = false;
    //            update();
    //
    //         },
    //         onError: (error) {
    //            isLoading = false;
    //            update();
    //            print("Error");
    //
    //         },
    //     );
    // }


    // var count = 0.obs;
    //
    // void kiracount() {
    //     count++;
    // }


}


