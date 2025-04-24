import 'package:chat_app/pages/AuthPages/authpage.dart';
import 'package:get/route_manager.dart';

var pagepath = [
  //
  GetPage(
    name: "/authpage",
    page: () => Authpage(),
    transition: Transition.rightToLeft,
  ),
];
