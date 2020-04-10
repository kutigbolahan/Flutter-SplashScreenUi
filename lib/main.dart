import 'package:flutter/material.dart';
import 'package:splashscreenui/splash2.dart';
import 'package:splashscreenui/splash3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
  '/':(context)=> MyHomePage(),
  '/splash2':(context)=> Splash2(),
  '/splash3':(context)=> Splash3(),
 
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
   static final routeName = 'homePage';
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
              child: Image.asset('assets/images/tea-ceremony.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Enjoy Your Meal!!', style: TextStyle(
              color: Colors.black45,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Text(
              
                'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
                textAlign: TextAlign.center,
                style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),
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
                  child: Text('Explore'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/splash2');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
