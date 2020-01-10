import 'package:firstapp/pages/errors/404.dart';
import 'package:firstapp/pages/home/home.dart';
import 'package:firstapp/pages/message/message.dart';
import 'package:firstapp/pages/setting/setting.dart';
import 'package:firstapp/pages/user/user.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = '/';
  static String home = '/home';
  static String message = '/message';
  static String setting = '/setting';
  static String user = '/user';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print('ROUTE WAS NOT FOUND ...');
        return NotFound();
      },
    );

    router.define(
      root,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return Home();
        },
      ),
    );

    router.define(
      home,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return Home();
        },
      ),
    );

    router.define(
      message,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return Message();
        },
      ),
    );

    router.define(
      setting,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return Setting();
        },
      ),
    );

    router.define(
      user,
      handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return User();
        },
      ),
    );
  }
}
