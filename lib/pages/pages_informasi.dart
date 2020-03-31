import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Informasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Color(0xFF2E7D32)),
      sized: false,
      child: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 30,
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      'images/header2.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.3,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 12,
                        child: Container(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 14),
                            child: Text(
                              'Kenali\nCOVID-19',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold),
                            )))
                  ],
                ),
                Container(
                  child: Positioned(
                      top: MediaQuery.of(context).size.height / 3,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.1, 0.8],
                              colors: [Colors.white, Colors.blueGrey[50]]),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                        ),
                        child: Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Apa Itu Virus Corona',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'Kanit'),
                              ),
                            ),
                            InkWell(
                              onTap: () {
        final snackBar = SnackBar(content: Text("Tap"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
                              child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              child: Card(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.all(10)),
                                    Container(
                                        child: CircleAvatar(
                                            child: Image.asset(
                                                'images/kenali.png'),
                                            backgroundColor: Colors.red[50]),
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.all(
                                            2.0), // borde width
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xFFFFFFFF), // border color
                                          shape: BoxShape.circle,
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Text(
                                          'Mengenal',
                                          style: TextStyle(fontSize: 18),
                                        )),
                                    Spacer(),
                                    Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.keyboard_arrow_right))
                                  ],
                                ),
                              ),
                            ),
                            ),
                            
                            Container(
                              height: MediaQuery.of(context).size.height / 8,
                              child: Card(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.all(10)),
                                    Container(
                                        child: CircleAvatar(
                                            child:
                                                Image.asset('images/cegah.png'),
                                            backgroundColor: Colors.orange[50]),
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.all(
                                            2.0), // borde width
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xFFFFFFFF), // border color
                                          shape: BoxShape.circle,
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Text(
                                          'Mencegah',
                                          style: TextStyle(fontSize: 18),
                                        )),
                                    Spacer(),
                                    Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.keyboard_arrow_right))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 8,
                              child: Card(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.all(10)),
                                    Container(
                                        child: CircleAvatar(
                                            child:
                                                Image.asset('images/obat.png'),
                                            backgroundColor: Colors.green[50]),
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.all(
                                            2.0), // borde width
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xFFFFFFFF), // border color
                                          shape: BoxShape.circle,
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Text(
                                          'Mengobati',
                                          style: TextStyle(fontSize: 18),
                                        )),
                                    Spacer(),
                                    Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.keyboard_arrow_right))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 8,
                              child: Card(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.all(10)),
                                    Container(
                                        child: CircleAvatar(
                                            child: Image.asset(
                                                'images/antisipasi.png'),
                                            backgroundColor: Colors.blue[50]),
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.all(
                                            2.0), // borde width
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xFFFFFFFF), // border color
                                          shape: BoxShape.circle,
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Text(
                                          'Mengantisipasi',
                                          style: TextStyle(fontSize: 18),
                                        )),
                                    Spacer(),
                                    Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.keyboard_arrow_right))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}