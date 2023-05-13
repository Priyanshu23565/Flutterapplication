import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'welcome_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir'
      ),
      home: MyHomePage(),
      routes: {
        '/mainPage' : (context)=>const WelcomeScreen(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            // padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("Student Helper App", style:  TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w800,
                  height: 1.5,

                ),),
                Text("Learn with pleasure with\n us, where you are!", style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  height: 1
                ),),

              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage('assets/image/img1.png'),
                  //   fit: BoxFit.cover
                  // )
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: (){openMainPage();},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: const Text('Continue..', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  void openMainPage()
  {
    Navigator.pushNamed(context, '/mainPage');
  }
}
