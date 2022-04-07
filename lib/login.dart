import 'package:flutter/material.dart';
import 'package:dbsqlite_login/signup.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

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
              top: 70,
              left: MediaQuery.of(context).size.width / 2 - 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //alignment: Alignment.topCenter,
                  Image.asset(
                    "images/mestIlogonotag-teal-300x48.png",
                    height: 24,
                    width: 150,
                  ),
                ],
              )),
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
            top: 150,
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
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
                    height: 500,
                    width: MediaQuery.of(context).size.width - 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          //height: 150,
                          width: MediaQuery.of(context).size.width - 70,
                          child: const Text(
                            "Welcome back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              //height: 5,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text("Log into your account"),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
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
                              hintText: 'Email/Username',
                              prefixIcon: Icon(Icons.person),
                              hintStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 70,
                          child: TextFormField(
                            obscureText: true,
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
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility_off),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //crossAxisAlignment: CrossAxisAlignment.center,

                            children: const [
                              //Icon(Icons.radio_button_checked_rounded),
                              Text("Remember me", textAlign: TextAlign.left),
                              Text(
                                "Forgot password?",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
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
                            child: const Text('Login'),
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
                              const Text("Don't have an account? ",
                                  textAlign: TextAlign.right),
                              GestureDetector(
                                child: const Text(
                                  "Sign up",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Sign_Up()));
                                },
                              ),
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
    );
  }
}
