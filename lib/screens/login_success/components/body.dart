import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  var i = SizeConfig.screenHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: SizeConfig.screenHeight != null
                ? SizeConfig.screenHeight! * 0.04
                : 0),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight != null
              ? SizeConfig.screenHeight! * 0.4
              : 0, //40%
        ),
        SizedBox(
            height: SizeConfig.screenHeight != null
                ? SizeConfig.screenHeight! * 0.08
                : 0),
        Text(
          "Đăng Nhập Thành Công",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth != null
              ? SizeConfig.screenWidth! * 0.6
              : 0,
          child: DefaultButton(
            text: "Vào Trang Chủ",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
