import 'package:flutter/material.dart';
import 'package:shop_app/models/Promotion.dart';
import 'package:shop_app/services/fetchPromotions.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Đặc biệt cho bạn",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        FutureBuilder(
            future: fetchPromotions(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  print("error :  ${snapshot.error}");
                  return Center(
                      child: Image.network(
                          "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
                } else if (snapshot.hasData) {
                  final data = snapshot.data as List<Promotion>;
                  print(data);
                  return Promotions(promotion: data);
                }
              }
              return Center(
                  child: Image.network(
                      "https://media0.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif?cid=ecf05e47xwurzv5bjceyazt6c1teu6f0ob20zn0u8m7ms430&rid=giphy.gif&ct=g"));
            }
            //  snapshot.hasData
            //     ? Promotions(
            //         promotion: snapshot.data,
            //       )
            //     : Center(child: Image.asset("assets/images/apple-pay.png")),
            ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       // SpecialOfferCard(
        //       //   image: "https://honguyen.info/uploads/voucher-alaluna.png",
        //       //   title: "Smartphone",
        //       //   hometext: "Smartphone",
        //       //   numOfBrands: 18,
        //       //   press: () {},
        //       // ),
        //       // SpecialOfferCard(
        //       //   image: "https://honguyen.info/uploads/voucher-alaluna-2.png",
        //       //   title: "Fashion",
        //       //   hometext: "Fashion",
        //       //   numOfBrands: 24,
        //       //   press: () {},
        //       // ),
        //       SizedBox(width: getProportionateScreenWidth(20)),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.promotion,
    required this.press,
  }) : super(key: key);

  final Promotion promotion;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(
                  "https://honguyen.info/uploads/${promotion.image1.split('\/')[1]}",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "${promotion.title}\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // TextSpan(
                        //   text: "$hometext\n",
                        //   style: TextStyle(
                        //     fontSize: getProportionateScreenWidth(18),
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        TextSpan(text: "${promotion.hometext}")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Promotions extends StatelessWidget {
  const Promotions({
    required this.promotion,
  });

  final List<Promotion> promotion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          promotion.length,
          (index) => SpecialOfferCard(
            promotion: promotion[index],
            press: () {},
          ),
        ),
      ),
    );
  }
}
