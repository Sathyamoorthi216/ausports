// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class admin_login extends StatelessWidget {
  const admin_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 868,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/student2.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Color(0xFF03498B).withOpacity(0.26),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 50, right: 270, top: 250),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue[500],
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(
                        left: 150,
                        right: 280,
                        top: 250,
                      ),
                      child: Text(
                        '|',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.04,
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(
                      left: 170,
                      right: 138,
                      top: 250,
                    ),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.04,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 40,
                      right: 140,
                      top: 340,
                    ),
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.04,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.45,
                          right: 25,
                          left: 25),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.transparent.withOpacity(0.10),
                                filled: true,
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.transparent.withOpacity(0.10),
                                filled: true,
                                labelText: 'staff id',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.transparent.withOpacity(0.10),
                                filled: true,
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          SizedBox(
                            height: 0.4,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 170,
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                                onPressed: () {},
                                child: Text('Forgot Password?')),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            child: SizedBox(
                              width: 230,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.pressed)) {
                                        return Colors.blue;
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                child: const Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              onPressed: () {},
                              child: Text('Don’t have an account? Sign up '))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
