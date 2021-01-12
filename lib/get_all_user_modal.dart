import 'dart:convert';
import 'package:http/http.dart' as http;

class AllUser {
  String id;
  String name;

  AllUser({this.id, this.name});

  factory AllUser.showAllUser(Map<String, dynamic> object){
    return AllUser(id: object['id'].toString(), name: object['first_name']+' '+object['last_name']);
  }

  static Future<List<AllUser>> connectToAPI(String page) async {

    String apiURL = 'https://reqres.in/api/users?page='+page;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<AllUser> allUser = [];
    for (int i=0; i<listUser.length; i++)
      allUser.add(AllUser.showAllUser(listUser[i]));

    return allUser;
  }

}

// json response
// {
//     "page": 2,
//     "per_page": 6,
//     "total": 12,
//     "total_pages": 2,
//     "data": [
//         {
//             "id": 7,
//             "email": "michael.lawson@reqres.in",
//             "first_name": "Michael",
//             "last_name": "Lawson",
//             "avatar": "https://reqres.in/img/faces/7-image.jpg"
//         },
//         {
//             "id": 8,
//             "email": "lindsay.ferguson@reqres.in",
//             "first_name": "Lindsay",
//             "last_name": "Ferguson",
//             "avatar": "https://reqres.in/img/faces/8-image.jpg"
//         }
//     ],
//     "support": {
//         "url": "https://reqres.in/#support-heading",
//         "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
//     }
// }