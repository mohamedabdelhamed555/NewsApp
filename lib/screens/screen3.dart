import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Models/cubit/GetNewsCubit/get_news_cubit.dart';
import 'package:newsapp/screens/screen1.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree(
      {super.key,
      required this.author,
      required this.description,
      required this.imagrUrl,
      required this.content});
  final String author;
  final String content;
  final String description;
  final String imagrUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 400 / 812,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "$imagrUrl",
                fit: BoxFit.cover,
              ),
            )),
        Container(
          padding: EdgeInsets.fromLTRB(10, 100, 10, 5),
          height: MediaQuery.of(context).size.height * 438 / 812, // width: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text("$description"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text("$content"),
              ),
            ]),
          ),
        ),
        Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 290 / 375,
          height: MediaQuery.of(context).size.height * 141 / 812,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 214, 213, 213),
              borderRadius: BorderRadius.circular(20)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Published by $author',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )
                ],
              ),
            ),
          ),
        ))
      ],
    ));
  }
}
