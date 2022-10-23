import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/models/UserInfo.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/services/fetchUser.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          FutureBuilder(
            future: fetchUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  print("error :  ${snapshot.error}");
                  return Center(
                      child: Image.network(
                          "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
                } else if (snapshot.hasData) {
                  final data = snapshot.data as List<UserInfo>;
                  print(data);
                  return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          ProfilePic(
                            img: data[0].photo,
                          ),
                          SizedBox(height: 20),
                          ProfileMenu(
                            text: "Tài Khoản Của Tôi",
                            icon: "assets/icons/User Icon.svg",
                            press: () => {},
                          ),
                          ProfileMenu(
                            text: "Thông Báo",
                            icon: "assets/icons/Bell.svg",
                            press: () {},
                          ),
                          ProfileMenu(
                            text: "Cài Đặt",
                            icon: "assets/icons/Settings.svg",
                            press: () {},
                          ),
                          ProfileMenu(
                            text: "Trợ Giúp",
                            icon: "assets/icons/Question mark.svg",
                            press: () {},
                          ),
                          ProfileMenu(
                            text: "Đăng Xuất",
                            icon: "assets/icons/Log out.svg",
                            press: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.remove('user');
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                          ),
                        ],
                      ));
                }
              }
              return Center(
                  child: Image.network(
                      "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
            },
          ),
          // ProfilePic(),
          // SizedBox(height: 20),
          // ProfileMenu(
          //   text: "Tài Khoản Của Tôi",
          //   icon: "assets/icons/User Icon.svg",
          //   press: () => {},
          // ),
          // ProfileMenu(
          //   text: "Thông Báo",
          //   icon: "assets/icons/Bell.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Cài Đặt",
          //   icon: "assets/icons/Settings.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Trợ Giúp",
          //   icon: "assets/icons/Question mark.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Đăng Xuất",
          //   icon: "assets/icons/Log out.svg",
          //   press: () async {
          //     SharedPreferences prefs = await SharedPreferences.getInstance();
          //     prefs.remove('user');
          //     Navigator.pushNamed(context, SignInScreen.routeName);
          //   },
          // ),
        ],
      ),
    );
  }
}
