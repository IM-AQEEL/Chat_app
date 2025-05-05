import 'package:chat_app/pages/AuthPages/authpage.dart';
import 'package:chat_app/pages/HomePage/home.dart';
import 'package:chat_app/pages/chat/chatpage.dart';
import 'package:chat_app/pages/Userprofile/user_profilepage.dart';
import 'package:chat_app/pages/profilepages/personprofile.dart';
import 'package:chat_app/widgets/welcome/welcome.dart';
import 'package:get/route_manager.dart';

var pagepath = [
  //
  GetPage(
    name: "/authpage",
    page: () => Authpage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage",
    page: () => Home(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/chatpage",
    page: () => Chatpage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/welcome",
    page: () => Welcome(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/profilepage',
    page: () => UserProfilepage(),
    transition: Transition.fade,
  ),
  // GetPage(
  //   name: "/updateprofile",
  //   page: () => UserProfilepage(),
  //   transition: Transition.fade,
  // ),
  GetPage(name: '/personprofile', page: () => PersonProfile()),
];
