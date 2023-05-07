import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/buyer_sign_up.dart';
import 'package:flutter_application_1/seller/seller_sign_up.dart';
import 'package:flutter_application_1/widget/call_a_btn.dart';
import 'package:flutter_application_1/widget/emailFieldWidget.dart';
import 'package:flutter_application_1/widget/passwordFieldWidget.dart';
import 'package:google_fonts/google_fonts.dart';

bool isRegistered = false;

GlobalKey<FormState> loginState = new GlobalKey<FormState>();

signIn() async {
  BuildContext? dialogContext = accountType == Account.buyer
      ? buyerScaffold.currentContext
      : scaffoldKey.currentContext;
  showDialog(
    context: dialogContext!,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(color: Color(0xffBD532A)),
      );
    },
  );
  var formData = loginState.currentState;
  if (formData!.validate()) {
    formData.save();
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  Navigator.of(dialogContext).pop();
}

class loginPage extends StatelessWidget {
  const loginPage({super.key});
// TODO: something
  @override
  Widget build(BuildContext context) {
    var inputStyle = GoogleFonts.lato(
        fontWeight: FontWeight.w500, fontSize: 16.0, color: Color(0xff6F5243));
    return WillPopScope(
      onWillPop: () async {
        return false; // this will stop or block going back to the previous page
      },
      child: Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Image.asset(
              "assets/images/login.png",
              width: 500,
              // height: 500,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login Now",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xffBD532A),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Form(
              key: loginState,
              child: Column(
                children: [
                  emailField(
                    inputStyle: inputStyle,
                    borderColor: Color(0xff876653),
                    lableTxtColor: Color(0xff876653),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  passwordField(
                    inputStyle: inputStyle,
                    borderColor: Color(0xff876653),
                    lableTxtColor: Color(0xff876653),
                  ),
                ],
              ),
            ),

            callActionBtn(
                btnTxt:
                    "Log In"), // callActioBtn used also as joinUs button in signUp forms
            if (isRegistered == false)
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have account?",
                    style: GoogleFonts.inter(
                      color: Color(0xff876653),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Acc_type_page');
                    },
                    child: Text(
                      "  Register.",
                      style: GoogleFonts.inter(
                          color: Color(0xffBD532A),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
