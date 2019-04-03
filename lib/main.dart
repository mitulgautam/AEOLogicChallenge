import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var selected = 0;
var colorRC = Colors.red;
var colorDL = Colors.white;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mParivahan Clone",
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void select(int value) {
    if (value == 0) {
      setState(() {
        colorDL = Colors.red;
        colorRC = Colors.white;
      });
    } else {
      setState(() {
        colorDL = Colors.white;
        colorRC = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: _appBarTitle("mParivahan", "A step to virtualistaion"),
        leading: MaterialButton(
          child: Icon(
            Icons.menu,
            size: 32.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
            minWidth: 32.0,
            child: Icon(
              Icons.help,
              color: Colors.white,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 32.0,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Page(),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _searchBar(context),
          Stack(
            children: <Widget>[
              Image.asset('images/background.jpeg'),
              Column(
                children: <Widget>[_banner()],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _heading("mParivahan Services"),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _containerT1(Image.asset('images/drivingtest.jpg'),
                          "DL Mock Test"),
                      _containerT1(
                          Image.asset('images/taxreceipt.jpg'), "Tax Receipt"),
                      _containerT1(
                          Image.asset('images/traffic.jpg'), "Traffic Status"),
                      _containerT1(
                          Image.asset('images/citizen.jpg'), "Citizen Report"),
                      _containerT1(
                          Image.asset('images/rto.jpg'), "Nearest RTO"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _backBar(context),
          _heading("RC Information"),
          Container(
            height: 140.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _conatinerT2(
                    Icon(
                      Icons.library_music,
                      size: 64.0,
                      color: Colors.red,
                    ),
                    "Temporary\nRegistration"),
                _conatinerT2(
                    Icon(Icons.line_weight, size: 64.0, color: Colors.red),
                    "Permanent\nRegistration"),
                _conatinerT2(
                    Icon(Icons.local_activity, size: 64.0, color: Colors.red),
                    "Renewal of\nRegistration"),
                _conatinerT2(
                    Icon(Icons.local_cafe, size: 64.0, color: Colors.red),
                    "Duplicate \nRC"),
                _conatinerT2(
                    Icon(Icons.local_car_wash, size: 64.0, color: Colors.red),
                    "No Objection\nCertificate"),
                _conatinerT2(
                    Icon(Icons.local_dining, size: 64.0, color: Colors.red),
                    "HP\nEndorsment"),
                _conatinerT2(
                    Icon(Icons.local_drink, size: 64.0, color: Colors.red),
                    "HP\nTermination"),
                _conatinerT2(
                    Icon(Icons.local_library, size: 64.0, color: Colors.red),
                    "Address\nChange"),
                _conatinerT2(
                    Icon(Icons.local_parking, size: 64.0, color: Colors.red),
                    "Reassignment\nOf Vehicle"),
                _conatinerT2(
                    Icon(Icons.local_movies, size: 64.0, color: Colors.red),
                    "Trade\nCertification"),
                _conatinerT2(
                    Icon(Icons.local_phone, size: 64.0, color: Colors.red),
                    "Certificate\nIssue"),
                _conatinerT2(
                    Icon(Icons.local_pizza, size: 64.0, color: Colors.red),
                    "Ownership\nTransfer"),
                _conatinerT2(
                    Icon(Icons.local_play, size: 64.0, color: Colors.red),
                    "Diplomatic\nVehicles"),
                _conatinerT2(
                    Icon(Icons.local_shipping, size: 64.0, color: Colors.red),
                    "Registration\nDisplay"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 8.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),
          _heading("DL Information"),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            height: 140.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //here
                _conatinerT2(
                    Icon(
                      Icons.layers,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "Learner's\nDL"),
                _conatinerT2(
                    Icon(
                      Icons.https,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "Permanent\nDL"),
                _conatinerT2(
                    Icon(
                      Icons.inbox,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "Renewable of\nDL"),
                _conatinerT2(
                    Icon(
                      Icons.insert_photo,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "Duplicate\nDL"),
                _conatinerT2(
                    Icon(
                      Icons.invert_colors,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "Addition of\nClass"),
                _conatinerT2(
                    Icon(
                      Icons.keyboard,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "International\nDriving Permit"),
                _conatinerT2(
                    Icon(
                      Icons.laptop_windows,
                      size: 64.0,
                      color: Colors.green,
                    ),
                    "License\nRelated Fees"),
              ],
            ),
          ),
          _backBar(context),
          _heading("How to use"),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //here
                _containerT1(
                    Image.asset(
                      "images/why.jpg",
                      fit: BoxFit.cover,
                    ),
                    "Why mParivahan"),
                _containerT1(
                    Image.asset(
                      "images/how.jpg",
                      fit: BoxFit.cover,
                    ),
                    "How to use"),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("images/banner.jpg"),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Text(
                              "10 Golden Rules!",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24.0),
                            ),
                            Icon(
                              Icons.wifi_tethering,
                              color: Colors.white,
                              size: 36.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _conatinerT2(Icon icon, String text) {
  return Container(
    margin: EdgeInsets.only(left: 8.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          icon,
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}

Widget _banner() {
  return Container(
    margin: EdgeInsets.only(top: 16.0),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "mParivahan",
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Get RC/DL Details | Create Virtual RC/DL",
            style: TextStyle(fontSize: 16.0),
          ),
          MaterialButton(
            onPressed: () {},
            elevation: 8.0,
            child: Text(
              "Share Now",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
          )
        ],
      ),
    ),
  );
}

Widget _heading(String text) {
  return Container(
    margin: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 20.0,
      ),
    ),
  );
}

Widget _backBar(BuildContext context) {
  return Container(
    height: 8.0,
    width: MediaQuery.of(context).size.width,
    color: Colors.black12,
  );
}

Widget _searchBar(BuildContext context) {
  return Container(
    color: Colors.black87,
    width: MediaQuery.of(context).size.width,
    child: Card(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      elevation: 8.0,
      child: Container(
        margin: EdgeInsets.only(top: 8.0),
        height: 48.0,
        child: Row(
          children: <Widget>[
            MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    //RC Click Row
                    children: <Widget>[
                      Icon(
                        Icons.contacts,
                        color: Colors.black38,
                      ),
                      Text(
                        "RC",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    padding: EdgeInsets.all(0.0),
                    height: 2.0,
                    color: colorRC,
                    width: 36.0,
                  ),
                ],
              ),
            ),
            Container(
              width: 2.0,
              color: Colors.black12,
              height: 48.0,
            ),
            MaterialButton(
              minWidth: 20.0,
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.contacts,
                        color: Colors.black38,
                      ),
                      Text(
                        "DL",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    padding: EdgeInsets.all(0.0),
                    height: 2.0,
                    color: Colors.white,
                    width: 36.0,
                  ),
                ],
              ),
            ),
            Container(
              width: 2.0,
              color: Colors.black12,
              height: 48.0,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintStyle: TextStyle(fontSize: 12.0),
                  hintText: '  Enter vehicle number to get details.',
                ),
              ),
            ),
            Container(
              height: 48.0,
              width: 48.0,
              color: Colors.blue,
              child: MaterialButton(
                child: Icon(Icons.search, color: colorDL),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _appBarTitle(String title, String subtitle) {
  //title for pariavahan
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        title,
        style: TextStyle(fontSize: 22.0),
      ),
      Text(
        subtitle,
        style: TextStyle(fontSize: 12.0),
      )
    ],
  );
}

Widget _containerT1(Image image, String text) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
        height: 140.0,
        child: Card(
          elevation: 8.0,
          child: image,
        ),
      ),
      Text(text)
    ],
  );
}
