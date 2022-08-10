import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
     home: Card(),
  ));
}
class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  int lvl = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             lvl += 1;
           });
         },
         child: Icon(Icons.add),
         backgroundColor: Colors.grey[800] ,
       ),
       body: Padding(
         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('asset/logo.png'),
                 radius: 50.0,
               ),
             ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
               Text(
                 'NAME',
                  style: TextStyle(
                   color: Colors.grey,
                   letterSpacing: 2.0,
                 ),
               ),
             SizedBox(height: 10.0),
             Text(
               'Sakshi Singh',
               style: TextStyle(
                 color: Colors.amberAccent,
                 letterSpacing: 2.0,
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 30.0),
             Text(
               'Current Level',
               style: TextStyle(
                 color: Colors.grey,
                 letterSpacing: 2.0,
               ),
             ),
             SizedBox(height: 10.0),
             Text(
               '$lvl',
               style: TextStyle(
                 color: Colors.amberAccent,
                 letterSpacing: 2.0,
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 30.0),
             Row(
               children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],

                ),
                 SizedBox(width: 10.0),
                 Text(
                   'sakshi123@gmail.com',
                   style: TextStyle(
                     color: Colors.grey[400],
                     fontSize: 18.0,
                     letterSpacing: 1.0,
                   ),
                 ),
               ],
             )
           ],
         ),
       ),
    );
  }
}



