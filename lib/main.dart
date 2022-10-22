import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isUser = prefs.getString('user');
  print('isUser');
  print(isUser);
  runApp(MyApp(
    isUser: isUser,
  ));
}

class MyApp extends StatelessWidget {
  final String? isUser;

  const MyApp({Key? key, this.isUser}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Họ Nguyễn',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute:
          isUser == null ? SplashScreen.routeName : HomeScreen.routeName,
      routes: routes,
    );
  }
}
