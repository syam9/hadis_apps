class DataHadis {
    final String name;
    final String id;
    final String available;

    const DataHadis({
        this.name = '',
        this.id = '',
        this.available = '',
    });
}


class LiveHomeInfo{
    String code;
    String message;
    List<DataHadis> dataHadis;

    LiveHomeInfo({
        this.code = '',
        this.message = '',
        this.dataHadis = const [DataHadis()],
    });

}



// class DataHadis {
//     final String name;
//     final String id;
//     final String available;
//
//     DataHadis({
//         required this.name,
//         required this.id,
//         required this.available,
//     });
//
//     factory DataHadis.fromJson(Map<String, dynamic> json) {
//         return DataHadis(
//             name: json["name"],
//             id: json["id"],
//             available: json["available"],
//
//         );
//     }
//
//     Map<String, dynamic> toJson() => {
//         "name": name,   
//         "id": id,   
//         "available": available,   
//     };
//
//     static List<DataHadis> listFromJson(List<dynamic> list) =>
//         List<DataHadis>.from(list.map((x) => DataHadis.fromJson(x)));
// }
//

