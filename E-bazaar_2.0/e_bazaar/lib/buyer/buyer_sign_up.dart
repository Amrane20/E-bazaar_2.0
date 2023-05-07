import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/login_screan.dart';
import 'package:flutter_application_1/models/buyer_model.dart';
import 'package:flutter_application_1/models/seller_model.dart';
import 'package:flutter_application_1/widget/PhoneNumberFieldwidget.dart';
import 'package:flutter_application_1/widget/adressFieldWidget.dart';
import 'package:flutter_application_1/widget/emailFieldWidget.dart';
import 'package:flutter_application_1/widget/firsNameFiledWidget.dart';
import 'package:flutter_application_1/widget/joinUsBtn.dart';
import 'package:flutter_application_1/widget/lastNameFieldWidget.dart';
import 'package:flutter_application_1/widget/passwordFieldWidget.dart';
import 'package:flutter_application_1/widget/storeFieldWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../seller/seller_sign_up.dart';

GlobalKey<FormState> buyerFormState = new GlobalKey<FormState>();
GlobalKey<ScaffoldState> buyerScaffold = GlobalKey<ScaffoldState>();
Buyer buyer = new Buyer();

buyer_signUp() async {
  BuildContext? dialogContext = accountType == Account.buyer
      ? buyerScaffold.currentContext
      : scaffoldKey.currentContext;
  showDialog(
    context: dialogContext!,
    builder: (context) {
      return Center(
        child: CircularProgressIndicator(color: Color(0xffBD532A)),
      );
    },
  );
  var formData = buyerFormState.currentState;
  if (formData!.validate()) {
    formData.save();
    isRegistered = true;

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: buyer.email!,
        password: buyer.password!,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  } else {
    print("not valide");
  }
  Navigator.of(dialogContext).pop();
}

createBuyerDocument() async {
  try {
    CollectionReference buyerRef =
        FirebaseFirestore.instance.collection('buyers');
    String buyerID = buyer.userId;
    Map<String, dynamic> buyerData = {
      'adress': buyer.adress, // John Doe
      'phoneNumber': buyer.phoneNumber, // Stokes and Sons
      'firstName': buyer.firstName, // 42
      'lastName': buyer.lastName,
      'location': buyer.location,
    };
    await buyerRef.doc(buyerID).set(buyerData);
    print('New Buyer created with ID: $buyerID');
  } catch (error) {
    print('Error creating seller document: $error');
  }
}

class buyerSignUpPage extends StatelessWidget {
  const buyerSignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var myInputStyle = GoogleFonts.lato(fontSize: 16, color: Colors.white54);
    return Scaffold(
      key: buyerScaffold,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xffBD532A),
              Color(0xff281F20),
            ])),
        child: Form(
          key: buyerFormState,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 300,
                  height: 175,
                  fit: BoxFit.cover,
                ),
              ),
             
              firstNameField(
                inputStyle: myInputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              lastNameField(inputStyle: myInputStyle),
              SizedBox(
                height: 24.0,
              ),
              phoneNumberField(inputStyle: myInputStyle),
              SizedBox(
                height: 24.0,
              ),
              adressField(inputStyle: myInputStyle),
              SizedBox(
                height: 24.0,
              ),
              emailField(inputStyle: myInputStyle),
              SizedBox(
                height: 24.0,
              ),
              passwordField(inputStyle: myInputStyle),

              // the join us button
              joinUsButton(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member?",
                    style: GoogleFonts.inter(color: Color(0xff876653)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginPage()));
                    },
                    child: Text(
                      "  Sign in.",
                      style: GoogleFonts.inter(
                          color: Color(0xffBD532A), fontSize: 16.0),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// "the Moroccan culture & products \nin your pocket to all Moroccan \nlovers & admirers "