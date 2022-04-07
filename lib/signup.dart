import 'package:flutter/material.dart';
import 'package:dbsqlite_login/login.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 20,
            left: 20,
            child: Center(
              child: Container(
                height: 25,
                width: 25,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, size: 10),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            width: MediaQuery.of(context).size.width - 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    //height: 5,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Log into your account",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            bottom: 0,
            child: Container(
              height: 300,
              //alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  )),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFEDF1F0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                hintText: 'First Name',
                                hintStyle: TextStyle(color: Colors.green),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your First Name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFEDF1F0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                hintText: 'Last Name',
                                hintStyle: TextStyle(color: Colors.green),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFEDF1F0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.green),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your email';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFEDF1F0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.green),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFEDF1F0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.green),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your password again';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 120,
                            child: const Text.rich(
                              TextSpan(
                                text:
                                    'By signing you agree to our ', // default text style
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Terms of use and privacy policy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green)),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width - 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0XFF2EB886),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            // style: ButtonStyle(
                            //   backgroundColor:
                            //       MaterialStateProperty.all<Color>(Colors.green),
                            // ),
                            onPressed: () {},
                            child: const Text('Sign Up'),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("Already have an account?",
                                  textAlign: TextAlign.right),
                              GestureDetector(
                                  child: const Text(
                                    "Log in",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // appBar: AppBar(
      //   //title: const Text(""),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
    );
  }
}
