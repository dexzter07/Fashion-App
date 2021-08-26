import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

class OrderSuccess extends StatefulWidget {
  @override
  _OrderSuccessState createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .35,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(26, 194, 43, 1),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                      Icons.check,
                      size: 52,
                      color: Colors.white
                  ),
                ),
              ),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Order Successfully Placed ", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
            Center(
              child: SizedBox(
                width: 309,
                height: 50,
                child: FlatButton(
                  color: Colors.deepOrangeAccent,
                  child: Text("Continue Shopping", style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.deepOrangeAccent,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(33.33)),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
            ),//
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}