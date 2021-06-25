import 'dart:async';

import 'package:covid19/models/data.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<Welcome> fetchRecords() async {
    var response = await client.get(
      Uri.parse(
          'https://disease.sh/v3/covid-19/countries/nepal'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(response.body);
      return welcomeFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}