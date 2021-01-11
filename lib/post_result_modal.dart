import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class PostResult {
  Logger logger = new Logger();

  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
    // hasil post result json berupa object
    // {
    // "name": "morpheus",
    // "job": "leader",
    // "id": "697",
    // "createdAt": "2021-01-10T03:22:20.675Z"
    // }
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiUrl = "https://reqres.in/api/users";

    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);
    // final prettyString = JsonEncoder.withIndent('  ').convert(jsonObject);
    // log("message");

    return PostResult.createPostResult(jsonObject);
  }
}
