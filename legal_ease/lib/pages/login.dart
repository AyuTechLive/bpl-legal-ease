import 'package:flutter/material.dart';
import 'package:legal_ease/component/app_textfield.dart';
import 'package:legal_ease/component/login_bottom.dart';
import 'package:legal_ease/config/app_routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          Padding(
            padding: EdgeInsets.fromLTRB(132, 39, 135, 0),
            child: Text(
              'WELCOME',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Quantico',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Everything Starts With Trust',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Quantico',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(
            height: 51,
          ),
          AppTextField(
            hint: 'Email',
            image: 'assets/image/email.png',
          ),
          SizedBox(
            height: 45,
          ),
          AppTextField(
            hint: 'Password',
            image: 'assets/image/password.png',
          ),
          SizedBox(
            height: 43,
          ),
          ElevatedButton(
              onPressed: () {
                print('Log In Clicked');
                Navigator.of(context).pushReplacementNamed(Approutes.home);
              },
              child: Text('Log In',style: TextStyle(
                color: Colors.black
              ),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                  
                ),
                fixedSize: Size(146, 50),
                side: BorderSide(color: Colors.black)
                
              ),
          )
        ]),
      ),
      bottomNavigationBar: LoginBottom(height: 118,text1: 'Don’t have an account | ',text2: 'sign up' ,approute:Approutes.signup ,),
    );
  }
}
