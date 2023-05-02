import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/login_screan.dart';
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

GlobalKey<FormState> formState = new GlobalKey<FormState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
Seller seller = new Seller();

signUp() async {
  BuildContext? dialogContext = scaffoldKey.currentContext;
  showDialog(
    context: dialogContext!,
    builder: (context) {
      return Center(
        child: CircularProgressIndicator(color: Color(0xffBD532A)),
      );
    },
  );
  var formData = formState.currentState;
  if (formData!.validate()) {
    formData.save();
    isRegistered = true;

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: seller.email!,
        password: seller.password!,
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

createSellerDocument() async {
  try {
    CollectionReference sellersRef =
        FirebaseFirestore.instance.collection('sellers');
    String sellerId = seller.userId;
    Map<String, dynamic> sellerData = {
      'adress': adress, // John Doe
      'phoneNumber': phoneNumber, // Stokes and Sons
      'firstName': firstName, // 42
      'lastName': lastName,
      'store': {
        'storeName': storeName,
        'storeImage': 'https://example.com/store-image.jpg'
      }
    };
    await sellersRef.doc(sellerId).set(sellerData);
    print('New seller created with ID: $sellerId');
  } catch (error) {
    print('Error creating seller document: $error');
  }
}

class sellerSignUpPage extends StatefulWidget {
  const sellerSignUpPage({
    super.key,
  });

  @override
  State<sellerSignUpPage> createState() => _sellerSignUpPageState();
}

class _sellerSignUpPageState extends State<sellerSignUpPage> {
  var inputStyle = GoogleFonts.lato(fontSize: 16, color: Colors.white54);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
          key: formState,
          child: ListView(
            physics: BouncingScrollPhysics(),
            // mainAxisAlignment: MainAxisAlignment.center,
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
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              lastNameField(
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              phoneNumberField(
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              storeNameField(
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              adressField(
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              emailField(
                inputStyle: inputStyle,
              ),
              SizedBox(
                height: 24.0,
              ),
              passwordField(
                inputStyle: inputStyle,
              ),

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