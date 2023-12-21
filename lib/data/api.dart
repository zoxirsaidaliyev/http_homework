import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http_homework/data/model.dart';

class ApiData {
  Future<Model> getData() async {
    String url = 'https://randomuser.me/api';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    Map<String, dynamic> data = jsonDecode(response.body);
    Model model = Model.fromJson(data);
    return model;
  }
}
