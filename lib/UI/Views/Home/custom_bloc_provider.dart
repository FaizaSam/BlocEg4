import 'package:bloc_eg4/app/routes/app.routes.dart';
import 'package:bloc_eg4/domain/cubit/cubit/theme_cubit.dart';
import 'package:bloc_eg4/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())
        ],
        child: Lava(
          router: AppRouter(),
        ));
  }
}
