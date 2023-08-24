import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/Models/cubit/GetNewsCubit/get_news_cubit.dart';
import 'package:newsapp/screens/screen3.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              context.read<GetNewsCubit>().getNews();
            },
            child: Text(
              "Get Updated News",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            )),
        SizedBox(
          height: 20,
        ),
        BlocBuilder<GetNewsCubit, GetNewsState>(
          builder: (context, state) {
            if (state is GetNewsInitial) {
              return Center(
                child: Text("Please press the button to get news"),
              );
            } else if (state is GetNewsLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetNewsSuccess) {
              return Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            ' Lastes News',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 22,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 260,
                          ),
                          Text(
                            ' See All',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_right_alt),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.response.articles.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(3),
                            width:
                                MediaQuery.of(context).size.width * 340 / 375,
                            height:
                                MediaQuery.of(context).size.height * 400 / 812,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(state
                                        .response.articles[index].urlToImage ??
                                    "https://i2-prod.mirror.co.uk/incoming/article29909337.ece/ALTERNATES/s1200d/0_Real-Madrid-v-Liverpool-UEFA-Champions-League-Final.jpg"),
                                fit: BoxFit.fitWidth,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        ScreenThree(
                                      author: state.response.articles[index]
                                              .author ??
                                          "No Author",
                                      description: state.response
                                              .articles[index].description ??
                                          "No description",
                                      content: state
                                          .response.articles[index].content,
                                      imagrUrl: state.response.articles[index]
                                              .urlToImage ??
                                          "https://i2-prod.mirror.co.uk/incoming/article29909337.ece/ALTERNATES/s1200d/0_Real-Madrid-v-Liverpool-UEFA-Champions-League-Final.jpg",
                                    ),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 45),
                                      Container(
                                        child: Text(
                                          state.response.articles[index]
                                                  .author ??
                                              "No Athir",
                                          style: GoogleFonts.nunitoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                  255, 4, 6, 174)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          state.response.articles[index]
                                              .description,
                                          style: GoogleFonts.nunitoSans(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          state
                                              .response.articles[index].content,
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: Text("Somethinge went wrong"),
              );
            }
          },
        ),
      ],
    ));
  }
}
