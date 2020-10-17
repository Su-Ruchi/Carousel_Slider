import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mona_lisa/homepage/main_page.dart';


class Sculpture extends StatefulWidget {
  @override
  _SculptureState createState() => _SculptureState();
}

class _SculptureState extends State<Sculpture> {
  int _current = 0;
  int current;
  List imgList = [
    'assets/image/mono.jpeg',
    'assets/image/mono.jpeg',
    'assets/image/mono.jpeg',
    'assets/image/mono.jpeg'
  ];

  String details =
      "    The Auriga was part of a group  \n  dedicated to Apollo by the tyrant\n Polyzalos of Gela(Sicily).so it has b...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.brown[900],
          ),

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.brown.withOpacity(0.6), BlendMode.dstATop),
                image: AssetImage("assets/image/back6.jpeg"),
              ),
            ),
          ),

          Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  MdiIcons.textShort,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "    The \nMuseum",
                                    style: GoogleFonts.lobster(
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      //color: Colors
                                    ),
                                  )),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: (){},
                                icon: FaIcon(
                                  FontAwesomeIcons.searchLocation,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          //  ),
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
            child: Center(
              child: CarouselSlider(
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.9,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: [
                  ListView(children: [
                    Container(
                      decoration: BoxDecoration(
                        color:Colors.transparent,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.transparent,
                            blurRadius: 20,
                         //   spreadRadius: 10,
                            offset: Offset(10, 50),
                          ),
                        ],
                      ),
                      child: Image(
                        image: AssetImage("assets/image/transparentimage.png"),
                       // image: NetworkImage("https://imagehost7.online-image-editor.com/oie_upload/images/3082951NjW7SVo/transparent.png"),
                      //color: Colors.,
                      //color: Colors.transparent.withOpacity(0.3),
                        colorBlendMode: BlendMode.dstATop,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "   Atenea \n Partenos",
                          style: GoogleFonts.sanchez(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'Pithagoras de Reggio',
                          style: TextStyle(
                          //  fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          details,
                          style: GoogleFonts.dancingScript(
                            color: Colors.white,
                           // fontSize:20,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                selectedLabelStyle: TextStyle(color: Colors.white),
                type: BottomNavigationBarType.shifting,
                currentIndex:1,
                onTap: (index) {
                  setState(() {
                    current = index;
                    if(current==1){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sculpture()));
    }
    else if(current==3){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
    }
    });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.building),
                    title: Text(
                      "Home",
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.monument,
                    ),
                    title: Text("Sculptures"),
                  ),
                  BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.archway,
                    ),
                    title: Text(
                      "Information",
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_balance,
                    ),
                    title: Text(
                      "History",
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

