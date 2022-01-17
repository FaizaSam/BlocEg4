//import 'dart:js';

import 'package:bloc_eg4/UI/Views/Home/Home.View.dart';
import 'package:bloc_eg4/domain/cubit/cubit/theme_cubit.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late ThemeCubit themeCubit;
  AppRouter() {
    themeCubit = ThemeCubit();
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        {
          return MaterialPageRoute(builder: (context) => HomeView());
        }
    }
  }
}
