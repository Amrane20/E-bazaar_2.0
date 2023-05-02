import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_testing.dart';

class fireTest extends StatelessWidget {
  const fireTest({super.key});

  @override
  Widget build(BuildContext context) {
    createSellerDocument() async {
      try {
        CollectionReference sellersRef =
            FirebaseFirestore.instance.collection('sellers');
        String sellerId = '3cK0RjkKKhZQdUsLhbDYw1iYl6z2';
        Map<String, dynamic> sellerData = {
          'adress': "ouarzazate ait zineb", // John Doe
          'phoneNumber': 0643167008, // Stokes and Sons
          'firstName': "amine", // 42
          'lastName': "jawhari",
          'store': {
            'storeName': 'bourane',
            'storeImage': 'https://example.com/store-image.jpg'
          }
        };
        await sellersRef.doc(sellerId).set(sellerData);
        print('New seller created with ID: $sellerId');
      } catch (error) {
        print('Error creating seller document: $error');
      }
    }

    return Scaffold(
      body: Center(
          child: IconButton(
              onPressed: () async {
                await createSellerDocument();
              },
              icon: Icon(Icons.add,size: 40,),)),
    );
  }
}
