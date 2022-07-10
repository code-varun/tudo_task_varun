import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:tudo_task/models/charmodel.dart';
import 'package:tudo_task/models/index.dart';
import 'package:tudo_task/utils/constant.dart';

class GetData {
  static var client = Client();
  int page = 0;
  String? query = "doctor";
  final String apiUrl = Endpoint().char_url;
  final String bookUrl = Endpoint().BookUrl;

  Future<List<Users>> fetchChardata(String limit, offset) async {
    List<Users> chars = [];
    var npurl = Uri.parse(apiUrl + '?limit=$limit&offset=$offset');

    var response = await client.get(npurl);

    if (response.statusCode == 200) {
      chars = usersFromJson(response.body);
    }

    return chars;
  }
}

