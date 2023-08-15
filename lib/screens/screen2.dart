import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[150],
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 40, start: 12, end: 12, bottom: 12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1 / 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'discuse adidas',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(Icons.close),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        scaffoldKey.currentState!.showBottomSheet(
                          (context) => Container(
                            height:
                                MediaQuery.of(context).size.height * 300 / 800,
                            color: Colors.white,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 15,
                                top: 33,
                                end: 33,
                                bottom: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    const Text(
                                      'Filter',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(
                                                  Icons
                                                      .restore_from_trash_rounded,
                                                  color: Colors.black),
                                              Text(
                                                'Reset',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 23),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      start: 15,
                                    ),
                                    child: Text('Sort By',
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      for (int i = 0; i < 3; i++)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 8, 14, 8),
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                fixedSize: Size(90, 10),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'Recommend',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Nunito"),
                                              )),
                                        ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 2; i++)
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 8, 14, 8),
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                fixedSize: Size(90, 10),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'following',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Nunito"),
                                              )),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Center(
                                        child: Text(
                                          'SAVE',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text("Filter",
                          style: TextStyle(color: Colors.red, fontSize: 17)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(80, 10),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Healthy",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: Size(80, 10),
                        ),
                        onPressed: () {},
                        child: Text(
                          "technology",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(80, 10),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Finance",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "About 11,166,000 result for ",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          TextSpan(
                            text: 'COVID New Variant.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 128 / 812,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/1279/679f/20420e71f53008269e726db07501f440?Expires=1693180800&Signature=EOk-f0NXEib3r1bJ-5s2WmnZQXmKQ~knllK8IC-H-XTiMU7Md3ymvuEdLElmkoNwP47lp8QH474uaFSDmHdobKJ0QWMOw6jCf2FY5n8o9WHgN79DF28ml6Njwm76lt08eyjgafhw4f6zZQ8KczkfNe~d8H7hXhOJ~01KDMTPoOVKU3u-LfbL-sVIwPSfz9rmRCp1KQFl8m2ItyR9YbLG9mQmRp3OmL6275I00WC4OKjw1gnu0w5ylqxYS3VAa3UigNBJujU46yTwSkdNA6RA43t8qdBBCNu3tiSKpjc5BB1B~LsmTR-MYh07mBxv3qaFmav6b3InM56obqcwjFEUUA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "5 things to know about the 'conundrum' of \n lupus",
                            style: TextStyle(
                              fontFamily: "NewsCycle",
                              color: Color.fromARGB(255, 240, 238, 238),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.055,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Matt Villano",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                color: Color.fromRGBO(
                                  255,
                                  255,
                                  255,
                                  1,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Sunday, 9 May 2021",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                color: Color.fromRGBO(
                                  255,
                                  255,
                                  255,
                                  1,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/6392/3be7/50ea60e76eed0aad66e17b4cdcc27247?Expires=1693180800&Signature=K9UYDGUxlbTYwK0O7VHaD9QFLxB7f4HN1znAmxr7nSr7zfKNrStY3-UWxl1PMjpEyygm4kSCmnou2FzU-ERklyfiSgX1Jb25tKZD1iauMWSwMk72XdU82UqGqv-HiVN15OCyCDBqoUCnHlQFxAndVlNUmqVA0PnDTeAxtskpfNiga3j69gSV~l8BkBLN00bEJwz1x~fkZXVuEZ2uDio50dOjiY4hSo9FOf~HyQAjk6341VenV4nHNOThjDhEBHnEKIcPAee-IVVoiTT4wQl83-TPZ4Fl2LNNSrV-D7G0qV~ea-fzruCm4KIPrDN6jHecctymuCe3lJ0ldyVVdB4kig__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "5 things to know about the 'conundrum' of \n lupus",
                              style: TextStyle(
                                fontFamily: "NewsCycle",
                                color: Color.fromARGB(255, 240, 238, 238),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.055,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Matt Villano",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Color.fromRGBO(
                                    255,
                                    255,
                                    255,
                                    1,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Sunday, 9 May 2021",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Color.fromRGBO(
                                    255,
                                    255,
                                    255,
                                    1,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
