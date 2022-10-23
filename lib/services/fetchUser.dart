import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import 'package:shop_app/models/Promotion.dart';
import 'package:shop_app/models/UserInfo.dart';

Future<List<UserInfo>> fetchUser() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var user = prefs.getString('user');
  const String apiUrl = "https://tapdoanhonguyen.com/api.php";

  final ioc = new HttpClient();
  ioc.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  final http = new IOClient(ioc);
  var map = new Map<String, dynamic>();
  map['apikey'] = 'p4TVqe1XCA8UsxhDG5Vhup80oK91mbXF';
  map['hashsecret'] = 'b3aLEV71qmaIJ2hsAb52BS4C1L12sBo3';
  map['language'] = 'vi';
  map['action'] = 'UsersInfo';
  map['module'] = 'users';
  map['timestamp'] = '0';
  map['username'] = user;

  final response = await http.post(Uri.parse(apiUrl), body: map);
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);

    // final data = json.decode(response.body) as Map<String, dynamic>;
    print("data-----------------${parsed}");
    final List<dynamic> data = parsed['data'];
    final test = data.cast<Map<String, dynamic>>();
    // List<UserInfo> UserInfos = test
    //     .map((item) => UserInfo.fromJson(item))
    //     .cast<Map<String, dynamic>>()
    //     .toList() as List<UserInfo>;

    // print("UserInfos ${UserInfos}");
    final a = test.map<UserInfo>((json) => UserInfo.fromJson(json)).toList();
    return a;
    // return parsed.map<Promotion>((json) => Promotion.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load');
  }
}
