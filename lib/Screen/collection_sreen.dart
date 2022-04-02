import 'package:flutter/material.dart';

class CollectionScreen extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<CollectionScreen> {

   @override
  void initState() {
    super.initState();
  }

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.red[400],
      title: Text('DOUBLE T SPORT'),
      centerTitle: true,
      leading: Icon(Icons.menu),
      elevation: 40,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red,Colors.purple],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft
            )
        ),
      ),
      actions:<Widget>[
        
      ],
      ),

    );
  }
}
