import 'package:flutter/material.dart';
import 'package:project12/admin/admin_login.dart';
import 'package:project12/admin/admin.dart';
import 'package:project12/admin/admin_sign_up.dart';
import 'package:project12/customer/customer.dart';
import 'package:project12/customer/customer_login.dart';
import 'package:project12/design/baking.dart';
import 'package:project12/design/clock_tower.dart';
import 'package:project12/design/receipt.dart';
import 'package:project12/exxx/prototype1.dart';
import 'package:project12/first_page.dart';
import 'package:project12/library/library.dart';
import 'package:project12/library_admin/library_admin.dart';
import 'package:project12/main_page_admin/main_page_admin.dart';
import 'package:project12/mainpage/asset.dart';
import 'package:project12/menu/borrowed_asset.dart';
import 'package:project12/mainpage/lee.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/library/request_asset.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/menu/popular_asset.dart';
import 'package:project12/menu/top9_asset.dart';
import 'package:project12/menu_admin/menu_admin.dart';
import 'package:project12/myapp.dart';
import 'package:project12/notification/notification.dart';
import 'package:project12/pages/home_page.dart';
import 'package:project12/prototype.dart';
import 'package:project12/exxx/prototype1.dart';

const Color primaryColor = Color(0xFFFFBD73);
const Color bgColor = Color(0xFF202020);
Color textFieldColor = Colors.white.withOpacity(0.3);

void main() {
  runApp(MaterialApp(
    home:  First_Page(),
    debugShowCheckedModeBanner: false,
    /*theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: Colors.white,
          ),
          // changing the textfield's color
          titleMedium: TextStyle(
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.black,
            shape: const StadiumBorder(side: BorderSide.none),
            padding: const EdgeInsets.all(20),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: primaryColor,
          hintStyle: TextStyle(color: textFieldColor),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: textFieldColor),
          ),
        )),*/
  ));
}
