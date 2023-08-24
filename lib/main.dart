import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Models/cubit/GetNewsCubit/get_news_cubit.dart';
import 'package:newsapp/screens/screen1.dart';
import 'package:newsapp/screens/screen2.dart';
import 'package:newsapp/screens/screen3.dart';
import 'package:newsapp/screens/screen4.dart';

void main() {
  runApp(const news_app());
}

class news_app extends StatelessWidget {
  const news_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenOne(),
      ),
    );
  }
}
