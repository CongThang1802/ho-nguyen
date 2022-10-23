import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'dart:io';

import 'package:shop_app/models/News.dart';

Future<List<News>> fetchNewss() async {
  const String apiUrl = "https://tapdoanhonguyen.com/api.php";

  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http = new IOClient(ioc);
  var map = new Map<String, dynamic>();
  map['apikey'] = 'z5JOJvy87v0gw02vHQnufL3YnjXk7a2Z';
  map['hashsecret'] = 'm4bZ3T3xV8kKN6M8R9KXI8M8LsD4alqc';
  map['language'] = 'vi';
  map['action'] = 'ListRowNewsByCat';
  map['module'] = 'news';
  map['timestamp'] = '0';
  map['catid'] = '1';

  final response = await http.post(Uri.parse(apiUrl), body: map);
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);

    // final data = json.decode(response.body) as Map<String, dynamic>;
    print("data-----------------${parsed}");
    final List<dynamic> data = parsed['data'];
    final test = data.cast<Map<String, dynamic>>();
    // List<News> Newss = test
    //     .map((item) => News.fromJson(item))
    //     .cast<Map<String, dynamic>>()
    //     .toList() as List<News>;

    // print("Newss ${Newss}");
    final a = test.map<News>((json) => News.fromJson(json)).toList();
    return a;
    // return parsed.map<Promotion>((json) => Promotion.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load');
  }
}
