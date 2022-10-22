import 'package:flutter/material.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: SizeConfig.screenHeight != null
                        ? SizeConfig.screenHeight! * 0.04
                        : 0), // 4%
                Text("Đăng Ký Tài Khoản", style: headingStyle),
                Text(
                  "Tiếp tục nhập thông tin của bạn",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    height: SizeConfig.screenHeight != null
                        ? SizeConfig.screenHeight! * 0.08
                        : 0),
                SignUpForm(),
                SizedBox(
                    height: SizeConfig.screenHeight != null
                        ? SizeConfig.screenHeight! * 0.08
                        : 0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'Bằng cách tiếp tục xác nhận rằng bạn đồng ý với \nĐiều khoản và Điều kiện của chúng tôi',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
