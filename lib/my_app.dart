import 'package:dbsqlite_login/login.dart';
import 'package:dbsqlite_login/signup.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      routes: {
        "/home": (context) => const MyHomePage(title: "Hello"),
        "/Login": (context) => const MyHomePage(title: 'Hello'),
        '/Signu_Up': (context) => const MyHomePage(title: 'Hello')
      },
      theme: ThemeData(
        primaryColor: const Color(0xFF2EB886),
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          Positioned(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/leaf-dews.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: 50,
            bottom: 0,
            child: Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      //height: 150,
                      width: MediaQuery.of(context).size.width - 70,
                      child: const Text(
                        "The best app for your plants",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          //height: 5,
                          fontSize: 45,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: const Color(0xFF2EB886),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Sign_Up()));
                        },
                        child: const Text('Sign up'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0XFF5AB58A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        // style: ButtonStyle(
                        //   backgroundColor:
                        //       MaterialStateProperty.all<Color>(Colors.green),
                        // ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
