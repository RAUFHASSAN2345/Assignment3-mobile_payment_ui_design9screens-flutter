import 'package:assignment03/screens/tabbarscreens/homepage.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/loginimage.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN WITH YOUR',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'MOBILE PHONE',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'NUMBER',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Column(
                          children: [
                            Image.asset('assets/logini2.png'),
                            Image.asset('assets/logini1.png'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 239, 237, 237),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 239, 237, 237)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Enter Mobile Number',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 14, left: 10),
                        child: Text(
                          '+92',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 19, 99, 238)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ))),
                ),
              ),
            ),
            Text(
              'Your personal details are safe with us',
              style: TextStyle(
                  color: Color.fromARGB(255, 130, 188, 235), fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Read our Privacy Policy and Terms and Conditions',
                style: TextStyle(color: Color.fromARGB(255, 130, 188, 235)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
