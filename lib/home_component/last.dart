import 'package:flutter/material.dart';
 
void main() => runApp(Last());
 
class Last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
    child: SizedBox(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Card(
                   child: Image.asset('images/fashion.png', height: 30,),
                          Text('Fashion', style: TextStyle(color: Colors.grey, fontSize: 10)),
                         
                        ),               
              ],
            ),
          )
        ],

      ),
    ),
    );
  }
}