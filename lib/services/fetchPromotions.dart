import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'dart:io';

import 'package:shop_app/models/Promotion.dart';

Future<List<Promotion>> fetchPromotions() async {
  const String apiUrl = "https://tapdoanhonguyen.com/api.php";

  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http = new IOClient(ioc);
  var map = new Map<String, dynamic>();
  map['apikey'] = 'p4TVqe1XCA8UsxhDG5Vhup80oK91mbXF';
  map['hashsecret'] = 'b3aLEV71qmaIJ2hsAb52BS4C1L12sBo3';
  map['language'] = 'vi';
  map['action'] = 'ListStoreAll';
  map['module'] = 'systems';
  map['timestamp'] = '0';

  final response = await http.post(Uri.parse(apiUrl), body: map);
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);

    // final data = json.decode(response.body) as Map<String, dynamic>;
    // print("data-----------------${parsed}");
    final List<dynamic> data = parsed['data'];
    final test = data.cast<Map<String, dynamic>>();
    // List<Promotion> promotions = test
    //     .map((item) => Promotion.fromJson(item))
    //     .cast<Map<String, dynamic>>()
    //     .toList() as List<Promotion>;

    // print("promotions ${promotions}");
    final a = test.map<Promotion>((json) => Promotion.fromJson(json)).toList();
    return a;
    // return parsed.map<Promotion>((json) => Promotion.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load');
  }
}
