import 'package:bloc_eg4/UI/Views/Home/custom_bloc_provider.dart';
import 'package:bloc_eg4/app/routes/app.routes.dart';
import 'package:bloc_eg4/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UI/Views/Home/custom_bloc_provider.dart';

void main() {
  runApp(Core());
}

class Lava extends StatelessWidget {
  final AppRouter router;
  Lava({required this.router});

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: "/home",
      onGenerateRoute: router.generateRoute,
    );
  }
}
