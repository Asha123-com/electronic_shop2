import 'dart:async';
import 'package:electronic_store/firebase_options.dart';
import 'package:electronic_store/page_siginin_login/login_page.dart';
import 'package:electronic_store/page_siginin_login/otp_page.dart';
import 'package:electronic_store/page_siginin_login/phone_page.dart';
import 'package:electronic_store/page_siginin_login/registration_page.dart';
import 'package:electronic_store/pages/cart.dart';
import 'package:electronic_store/pages/cover_page.dart';
import 'package:electronic_store/pages/home_details.dart';
import 'package:electronic_store/pages/home_page.dart';
import 'package:electronic_store/pages/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/signup',
      getPages: [
        GetPage(name: '/signup', page: ()=> RegistrationPage()),
        GetPage(name: '/log', page: ()=> LoginPage()),
        GetPage(name: '/cover', page: ()=> CoverPage()),
        GetPage(name: '/phone', page: ()=> PhonePage()),
        GetPage(name: '/otp', page: ()=> OtpPage()),
        GetPage(name: '/home', page: ()=> HomePage()),
        // GetPage(name: '/par', page: ()=> PlacesListScreen()),
        GetPage(name: '/details', page: ()=> HomeDetails()),
        GetPage(name: '/pho', page: ()=> Phone()),
        GetPage(name: '/cart', page: ()=> Cart()),
        /// Time_pass
        // GetPage(name: '/book', page: ()=> Book()),
        // GetPage(name: '/theme', page: ()=> LightTheme()),
        // GetPage(name: '/bookthing', page: ()=> BookThing()),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home:MyHomePage(),
    );
  }
}


