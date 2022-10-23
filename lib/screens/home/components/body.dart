import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_app/models/News.dart';
import 'package:shop_app/services/fetchNews.dart';

import '../../../size_config.dart';
// import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Thoát Ứng Dụng?'),
              content: new Text('Bạn có muốn thoát khỏi ứng dụng'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text('Không'),
                ),
                TextButton(
                  onPressed: () => exit(0),
                  child: new Text('Có'),
                ),
              ],
            ),
          )) ??
          false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(40)),
              // DiscountBanner(),
              // Categories(),
              SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(40)),
              FutureBuilder(
                future: fetchNewss(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      print("error :  ${snapshot.error}");
                      return Center(
                          child: Image.network(
                              "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
                    } else if (snapshot.hasData) {
                      final data = snapshot.data as List<News>;
                      print(data);
                      return PopularProducts(
                        news: data,
                      );
                    }
                  }
                  return Center(
                      child: Image.network(
                          "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
                },
              ),
              // PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
