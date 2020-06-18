import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}
 
class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Colors.green, Colors.blue]),
        ),
            padding: EdgeInsets.fromLTRB(10, 30, 10, 130),
            child: ListView(
              children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [Colors.green, Colors.blue]),
        ),
                      child: Image.asset('images/malakat.png',width: 283.04,height: 43.87,)
                    ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 105.39, 10, 0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 48, 10, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email address',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 18, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 24, 10, 24),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      child: Text('Login'),
                      onPressed: () {if (nameController.text == passwordController.text) {
                        Navigator.of(context).pushReplacementNamed('/2');
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // return object of type AlertDialog
                            return AlertDialog(
                              title: new Text("AlertDialog"),
                              content: new Text("Salah la cui cui"),
                              actions: <Widget>[
                                // usually buttons at the bottom of the dialog
                                new FlatButton(
                                  child: new Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      Navigator.of(context).pushReplacementNamed('/2');}
                      },
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: FlatButton(
                  onPressed: (){
                      //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password?'),
                ),
                )
              ],
            )));
  }
}