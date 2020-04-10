import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  static final routeName = 'splash2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/delivery.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Your Product is \n on the way!!',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing \n industries for previewing layouts and visual mockups.',
             textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  textColor: Colors.white,
                  color: Colors.blue[500],
                  child: Text('Go Home'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/splash3');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
