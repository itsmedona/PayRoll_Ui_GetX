import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../signup/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
    Widget build(BuildContext context) {
    var unameControl = TextEditingController();
    var passControl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: GoogleFonts.poppins(fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Username',
                style: GoogleFonts.ptSansCaption(
                  textStyle: TextStyle(
                      color: Color(0xff5A636A),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              child: TextFormField(
                controller: unameControl,
                decoration: InputDecoration(
                  fillColor: const Color(0xffE7E4F4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Password',
                style: GoogleFonts.ptSansCaption(
                  textStyle: TextStyle(
                      color: Color(0xff5A636A),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              child: TextFormField(
                controller: passControl,
                decoration: InputDecoration(
                  fillColor: const Color(0xffE7E4F4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 137,
                height: 51,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    backgroundColor: Color(0xff0D1F23),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    'Log In',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New user ?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: Text(
                        'SignUp here',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}