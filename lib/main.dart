import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "mParivahan",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
              "A step to virtualistaion",
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('images/background.jpeg'),
                Column(
                  children: <Widget>[
                    Card(
                      margin:
                          EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                      elevation: 8.0,
                      child: Container(
                        height: 64.0,
                        child: Row(
                          children: <Widget>[
                            MaterialButton(
                              minWidth: 16.0,
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.contacts,
                                    color: Colors.black38,
                                  ),
                                  Text(
                                    "RC",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
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
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.contacts,
                                    color: Colors.black38,
                                  ),
                                  Text(
                                    "DL",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
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
                                  hintText:
                                      '  Enter vehicle number to get details.',
                                ),
                              ),
                            ),
                            MaterialButton(
                              minWidth: 20.0,
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.search,
                                    color: Colors.black38,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "mParivahan",
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold),
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
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                    child: Text(
                      'mParivahan Services',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
                              height: 140.0,
                              child: Card(
                                elevation: 8.0,
                                child: Image.asset('images/background.jpeg'),
                              ),
                            ),
                            Text("Traffic Status")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
                              height: 140.0,
                              child: Card(
                                elevation: 8.0,
                                child: Image.asset('images/office.jpg'),
                              ),
                            ),
                            Text("Citizen Offence Report")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
                              height: 140.0,
                              child: Card(
                                elevation: 8.0,
                                child: Image.asset('images/background.jpeg'),
                              ),
                            ),
                            Text("Nearest RTO")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
                              height: 140.0,
                              child: Card(
                                elevation: 8.0,
                                child: Image.asset('images/office.jpg'),
                              ),
                            ),
                            Text("Traffic Status"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 8.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Text(
                'RC Information',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.people,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Temporary\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.web,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Permamnent\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.mail,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Renewal of\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.pages,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Duplicate\nRC")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              height: 8.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Text(
                'DL Information',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.people,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Temporary\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.web,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Permamnent\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.mail,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Renewal of\nRegistration")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.only(left: 32.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.pages,
                              size: 64.0,
                              color: Colors.lightBlueAccent,
                            ),
                            Text("Duplicate\nRC")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
