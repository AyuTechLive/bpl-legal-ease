import 'package:flutter/material.dart';
import 'package:legal_ease/component/app_textfield.dart';
import 'package:legal_ease/component/login_bottom.dart';
import 'package:legal_ease/component/signup_bottom.dart';
import 'package:legal_ease/config/app_routes.dart';

class SignupClient extends StatelessWidget {
  const SignupClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  width: 430,
                  height: 173,
                  decoration: ShapeDecoration(
                    color: Color(0xFF171717),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.20000000298023224),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 38, 0, 0),
                    child: Text(
                      'LEGAL EASE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Spectral SC',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(130, 112, 0, 0),
                child: ClipRRect(
                  child: Image.asset('assets/image/logo.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          SizedBox(
    width: 364,
    child: Text(
        'Pioneering Legal Solutions for a Changing World',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontFamily: 'Quantico',
            fontWeight: FontWeight.w400,
            height: 0,
        ),
    ),
),
         
          SizedBox(
            height: 32,
          ),
          AppTextField(
            hint: 'Name',
            image: 'assets/image/name.png',
          ),
          SizedBox(
            height: 39,
          ),
          AppTextField(
            hint: 'Email',
            image: 'assets/image/email.png',
          ),
          SizedBox(
            height: 39,
          ),
          AppTextField(
            hint: 'Aadhaar Number',
            image: 'assets/image/aadharno.png',
          ),
          SizedBox(
            height: 39,
          ),
          AppTextField(
            hint: 'Password',
            image: 'assets/image/password.png',
          ),
          SizedBox(
            height:39,
          ),
          ElevatedButton(
            onPressed: () {
              print('Sign Up Clicked');
              Navigator.of(context).pushReplacementNamed(Approutes.home);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(146, 50),
                side: BorderSide(color: Colors.black)),
          )
        ]),
      ),
      bottomNavigationBar: SignupBottom(height: 78,text1: 'Already have an account | ',
      text2: 'Log in',approute: Approutes.login,),
    );
  }
}
