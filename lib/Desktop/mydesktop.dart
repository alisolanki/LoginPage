import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'artistdata.dart';

ArtistData dataText = ArtistData();

class MyDesktop extends StatefulWidget {
  @override
  _MyDesktopState createState() => _MyDesktopState();
}

class _MyDesktopState extends State<MyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Show World',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          FlatButton(onPressed: () {}, child: Icon(Icons.menu)),
        ],
      ),
      body: Column(
        children: <Widget>[
          //SearchTab
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
//              color: Colors.purple.shade100,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                )
              ],
            ),
            margin: EdgeInsets.all(10.0),
//            padding: EdgeInsets.only(left: 20.0),
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black38,
                      decoration: InputDecoration(hintText: 'Search'),
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // data region
          Expanded(
            child: Center(
              child: Column(
                children: <Widget>[
                  //data for artists
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Artists',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: DisplayData(),
                              ),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Directors
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Directors',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: DisplayData(),
                              ),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
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

class DisplayData extends StatelessWidget {
  const DisplayData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Name : ' + dataText.printDataName(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Address : ' + dataText.printAddress(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Phone Number : ' + dataText.printPhoneNumber(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Email : ' + dataText.printEmail(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
