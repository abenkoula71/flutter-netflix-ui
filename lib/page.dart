import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future _incrementCounter() async {
    print('hello word');
    c1.addListener(() async {
      //listener

      ccp = cc <= c1.offset;
      setState(() {});
      print(ccp);
      //update state
      cc = c1.offset;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _incrementCounter();
  }

  List listMovie = [
    "https://cinedweller.com/wp-content/uploads/2020/02/bright-david-ayer-affiche-netflix.jpg",
    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQQNrlOXZo1PiPop2bi9rMajlO_GbkWyeCIDKwRKBbtnWV_sSCFH4zs1SuqO4axDRE9hDrlhDyfqvc2PPrUmmkxmkVqVuTMRcY6pL34jN7VH1WPtj--ofqDtKb40d6m4mptEVgtPNe1o95biM514epgRM.jpg?r=24c",
    "https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2020.2F11.2F18.2Ff4de39ad-f5b7-4b41-9501-4b23027d5b48.2Ejpeg/1120x1647/quality/80/thumbnail.jpg",
    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQamrFccb2WvWTaMEI0Jt5n6gWIavlCP68MvuqYj8rWQDaDbOM4OEQPnXwa6sX_Wl70W32VPtltaW-ct1On4XJ9yefsf8mLF_vAwcCNiJ7hdEwng7C4C2IifNhVQK69ahS0V2mcRCVVk_J5_BbaQ0STCe.jpg?r=9bd",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIOArPizusiXVqEvG31e6XQ8Jvjv4r2zrHaw&usqp=CAU",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/blue-miracle-1645747137.jpg"
  ];
  ScrollController c1 = ScrollController();
  var cc = 0.0;
  var ccp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      // appBar: AppBar(

      //     backgroundColor: ccp
      //         ? Color.fromARGB(0, 162, 25, 25)
      //         : Color.fromARGB(67, 94, 94, 94),
      //     title:),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: c1,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.arstechnica.net/wp-content/uploads/2022/07/netflix-800x450.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(),
                ),
                Container(
                  height: 90,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            'Ma liste',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.play_arrow),
                            Text(
                              'Lecture',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            'Infos',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                menu("Séries internationales à suspense", listMovie),
                menu("Tendances actuelles", listMovie),
                menu("Filmes Et éries jeunesse", listMovie)
              ],
            ),
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ccp
                  ? ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0)
                  : ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(62, 43, 43, 43).withOpacity(0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png'))),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://raw.githubusercontent.com/abenkoula71/netflix-ui/main/79-790382_search-icon-transparent-white-searching-icon-white-png-removebg-preview.png'))),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/91261923?s=400&u=d68d0c59214ec0e3d85d97d118ca28a5892d1cd8&v=4'))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget menu(type, list) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, bottom: 5, top: 10),
            child: Text(
              '$type',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  list.length,
                  (index) => Container(
                        height: 180,
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(list[index])),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                      ))
            ],
          ),
        ),
      ],
    );
  }
}
