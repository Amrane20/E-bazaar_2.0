import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String testAdress;
  final int testPhone;
  final String testName;
  final String testLastName;

  AddUser(this.testAdress, this.testPhone, this.testName, this.testLastName);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    var users = FirebaseFirestore.instance.collection('sellers');
    Future<void> addUser() {
      
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'adress': testAdress, // John Doe
            'phoneNumber': testPhone, // Stokes and Sons
            'firstName': testName ,// 42
            'lastName' : testLastName,
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}