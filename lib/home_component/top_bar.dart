import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
    Stack(
 children: <Widget>[
    Container(
      child: SizedBox(
                width: double.infinity,
                child: Container(
                  color: Colors.blue[100],
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 0, 20),
                          child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                suffixStyle: TextStyle(color: Colors.blue[100]),
                                hintText: 'search product...',
                                hintStyle: TextStyle(fontSize: 12),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.blue
                                      )
                                ),
                                focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.blue

                                      )
                                )
                            )
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                        child: Icon(Icons.person_outline, color: Colors.white, size: 25),
                      )
                    ],
                  ),
                ),
              ),
    )]);
  }
}

Widget newTopBar(){
  return PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.indigo[500],
            title: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.menu),
                      suffixStyle: TextStyle(color: Colors.grey),
                      hintText: 'i am looking for...',
                      hintStyle: TextStyle(fontSize: 12),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red)),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red))),
                ),
              ),
            ),
            actions: <Widget>[
              SizedBox(
                width: 15,
              ),
              SizedBox(width: 20, child: Padding(
                padding: const EdgeInsets.only(top:18),
                child: Image.asset('images/person.png'),
              )),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        );
}