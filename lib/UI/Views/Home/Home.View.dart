import 'package:bloc_eg4/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);
    // ignore: avoid_unnecessary_containers
    return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
            if (state is ThemeDark) {
              Text('The Theme is Dark');
            }
            if (state is ThemeDark) {
              Text('The Theme is Dark');
            }
            return Text("");
          }),
        ),
        body: BlocListener<ThemeCubit, ThemeState>(
          listener: (context, state) {
            if (state is ThemeDark) {
              //  print("The is Changed");
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            }
            if (state is ThemeLight) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            }
          },
          child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
            return Center(
              child: ElevatedButton(
                child: Text(
                  'ToggleTheme',
                ),
                onPressed: () {
                  themeCubit.toggleTheme();
                  print(state.toString());
                },
              ),
            );
          }),
        ));
  }
}
