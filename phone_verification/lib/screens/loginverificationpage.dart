import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/services/authservices.dart';

class LoginVerificationPage extends StatefulWidget {
  @override
  _LoginVerificationPageState createState() => _LoginVerificationPageState();
}

class _LoginVerificationPageState extends State<LoginVerificationPage> {
  
  String phoneNo;
  String smsCode;
  String verificationId;
  bool codeSent =false;

  Future<void> verifyPhone(phoneNo) async {

    final PhoneVerificationCompleted verified = (AuthCredential authResult){
      AuthService().signIn(authResult);
    };

    final PhoneVerificationFailed verificationfailed = (FirebaseAuthException authException){
      print('${authException.message}');
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]){
      this.verificationId = verId;
      setState(() {
        this.codeSent = true;
      });
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId){
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo, 
      timeout: const Duration(seconds: 5),
      verificationCompleted: verified, 
      verificationFailed: verificationfailed, 
      codeSent: smsSent, 
      codeAutoRetrievalTimeout: autoTimeout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Authentication'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your phone number (+94xxxxxxxxx)",
                  // labelText: "Phone Number"
                ),
                onChanged: (value) {
                  this.phoneNo = value;
                },
              ),
              SizedBox(height: 20,),
              codeSent ? TextField(
                decoration: InputDecoration(
                  hintText: "Enter OTP",
                  // labelText: "Phone Number"
                ),
                onChanged: (value) {
                  this.smsCode = value;
                },
              ) : Container(),
              SizedBox(height: 20,),
              RaisedButton(
                onPressed:(){ 
                  codeSent ? AuthService().signInWithOTP(smsCode, verificationId) : verifyPhone(phoneNo);
                },
                child: codeSent ? Text('Login'): Text('Verify'),
                textColor: Colors.white,
                elevation: 7,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}