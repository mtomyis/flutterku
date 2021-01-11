import 'dart:convert';
import 'package:http/http.dart' as http;

class UserResult {
  String id;
  String email;

  UserResult({this.id, this.email});

  factory UserResult.showUserId(Map<String, dynamic> object) {
    return UserResult(id: object['id'].toString(), email: object['email']);
  }
  // hasil get user id
  // {
  //   "data": {
  //       "id": 2,
  //       "email": "janet.weaver@reqres.in",
  //       "first_name": "Janet",
  //       "last_name": "Weaver",
  //       "avatar": "https://reqres.in/img/faces/2-image.jpg"
  //   },
  //   "support": {
  //       "url": "https://reqres.in/#support-heading",
  //       "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  //   }
  // }

  static Future<UserResult> connectToAPI(String id) async {
    String apiUrl = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var dataUser = (jsonObject as Map<String, dynamic>)['data'];

    return UserResult.showUserId(dataUser);
  }
}
