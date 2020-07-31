import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brandz Garage',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: <Widget>[
              Text("PARIS"),
              IconButton(
                  icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
            ],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.tune), onPressed: () {})
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.25,
                      initialPage: 0,
                      enableInfiniteScroll: false),
                  items: [
                    "All",
                    "Food",
                    "Sport",
                    "Test",
                    "Supply",
                    "Dummy",
                  ]
                      .map((item) => Container(
                            child: Center(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: item == "Food"
                                      ? Colors.deepPurple[200]
                                      : Colors.grey[800],
                                  gradient: LinearGradient(
                                    colors: [
                                      item == "Food"
                                          ? Colors.deepPurple[200]
                                          : Colors.grey,
                                      item == "Food"
                                          ? Colors.deepPurple[500]
                                          : Colors.black
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      MediaQuery.of(context).size.width * 0.2,
                                    ),
                                  )),
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Center(
                                  child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: item == "Food"
                                          ? Colors.deepPurple[400]
                                          : Colors.grey[700],
                                      radius:
                                          MediaQuery.of(context).size.width *
                                              0.08,
                                      child: FaIcon(FontAwesomeIcons.user,
                                          color: Colors.amber),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item),
                                  ),
                                ],
                              )),
                            )),
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Popular Events",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  items: [1, 2, 3, 4, 5]
                      .map((item) => Container(
                            // color: Colors.grey,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 20, 8, 20),
                                        child: Container(
                                          child: Center(
                                              child: Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/sample.jpg"),
                                                    fit: BoxFit.cover),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(25),
                                                )),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.6,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            child: Text(""),
                                          )),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Colors.black.withOpacity(0.8),
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          child: FaIcon(
                                              FontAwesomeIcons.solidHeart,
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16.0, 8, 8, 8),
                                      child: Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "FRI, DEC 19TH - MON, DEC 27TH",
                                                style: TextStyle(
                                                    color:
                                                        Colors.deepPurple[200]),
                                              ),
                                              Text(
                                                "Nocturnal and unusual visit",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(),
                                              ),
                                              Text(
                                                "Louvre",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ));
  }
}
