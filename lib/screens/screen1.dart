import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(30)),
            labelText: "Dogecoin to the Moon...",
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(
                "images/bell.png",
              ))
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Latest News",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text(
                    "see all",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Image.asset(
                    "images/arrow.png",
                    width: 40,
                    height: 50,
                  )
                ],
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 2; i++)
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 310 / 375,
                      height: MediaQuery.of(context).size.height * 240 / 812,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/man.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "by Ryan Browne",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Crypto investors should be\n prepared to lose all their money,\n BOE governor says",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: "NewsCycle"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Text(
                            "“I’m going to say this very bluntly again,” he added. “Buy them \n only if you’re prepared to lose all your money.”",
                            style: TextStyle(
                                color: Color.fromARGB(255, 181, 181, 178),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Nunito"),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor:
                                  Color.fromRGBO(237, 91, 91, 0.948),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {},
                          child: Text(
                            "Healthy",
                            style: TextStyle(
                                color: Colors.white,
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
                            "Technology",
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
                            "Finance",
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
                            "Arts",
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
                            "Sports",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          )),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 128 / 812,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/69c6/1abd/c00223e6f2740ac799449e0895416c82?Expires=1693180800&Signature=JJZ1MbZGdc8tdWDfp4gHk3DaSv0sDAsMHFC7IQ21gBsAXIdcLKrTQWC9FH38lOc0RhFj5WcAjxx5nInDJEu9WX5RGFCJhbj8hK9vJ2YxMl7ixtZl-f1NFZcMwRF4bMre1tT6HrU-oliEU~-E6e1jd3sKSKOcxu9QXkTmA1nYF99s3rrPpp3wvNXJFU7RZKEoDQfKSQzgwf99D9UVEQ3auuJTWRI6fWtOAP4ctelx2Yf4lgEdsWYGBq92702NY3ttoThGLBC4Y6JzUGKppXAgRu6sQyhtzZHcqo5ZIRK8OqS52ecM7bWZWSj2j8-9Ru7d4AJp6BlxzQ8H-4gZSKD7DQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 128 / 812,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/7fcf/e2ab/db2c76b6b9d1cef9a83e37fce052776f?Expires=1693180800&Signature=jr3~o3A1KCBnebd86Xmhe7P9THUKVttY~N6syh1aV~tJR1Heg1jVYMwJIgWqzk8G91eseWxb-DlkwQJajkedLrIkFLbhLpJJvIQUfnJafMeSK7Hf9coKU~T3WtMzKLM05fqlmcaXBFAKny~IwyzwTIGgH9znsdeC3cmtqtndCbj6Im9dp7eac5Febf2i9Mx1sTy9tmf43Zd6HNJxRneyaS3hCPQVBlzRffELDtb-npxCgU2r2oOkGg~u--e8MUZaG7b3w076ym5tBy5wudVekuNhfwikQIcoDmtNPCFe9nZP7jwyxSEk6c~06W1b7eK9nG03SfqvCc45DcT5~bckYA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                        "4 ways families can ease anxiety together",
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
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Zain Korsgaard",
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
                  )
                ],
              ),
            ),
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
                        "What to do if you're planning or attending a \n wedding during the pandemic",
                        style: TextStyle(
                          fontFamily: "NewsCycle",
                          color: Color.fromARGB(255, 240, 238, 238),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: Column(
                      children: [
                        Icon(Icons.home_outlined),
                        Text('home'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: Column(
                      children: [
                        Icon(Icons.favorite_border),
                        Text(
                          'favorite',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: Column(
                      children: [
                        Icon(Icons.emoji_emotions_outlined),
                        Text('profile'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
