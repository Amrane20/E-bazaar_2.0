import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/allCatigories.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class uploadPage extends StatefulWidget {
  const uploadPage({super.key});

  @override
  State<uploadPage> createState() => _uploadPageState();
}

class _uploadPageState extends State<uploadPage> {
  int current = 0;
  XFile? _file;
Future<void> _pickImage() async {
  try {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final image = File(pickedFile.path);
      final reducedImage = await FlutterNativeImage.compressImage(
        image.path,
        quality: 80,
        targetHeight: 800,
        targetWidth: 800,
      );
      print(reducedImage.path);
    }
  } catch (e) {
    print('Error picking image: $e');
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E7E7),
      appBar: AppBar(backgroundColor: Color(0xffE7E7E7), elevation: 0),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          DottedBorder(
            color: Color(0xff2F4858),
            borderPadding: EdgeInsets.only(left: 20.0, right: 20),
            borderType: BorderType
                .RRect, // we use bordertyp.RRect when we want to give a raduis
            radius: Radius.circular(10),
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20),
              width: double.infinity,
              height: 190.0,
              decoration: BoxDecoration(
                color: Color(0xffDCDCDC),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _pickImage,
                     icon: Icon(Icons.cloud_upload_rounded,
                      size: 30,
                      color: Color(0xff2F4858),
                    ),),
                    RichText(
                      text: TextSpan(
                          text: "choose file ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffBD532A)),
                          children: [
                            TextSpan(
                                text: "to upload",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black))
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 32, right: 20.0, bottom: 24.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: Color(0xff2F4858),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: Color(0xff2F4858),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Import from URL",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      // TODO: this will be changed to textfieldform
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 14.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(153, 47, 72, 88),
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                        ),
                        child: Text(
                          "Add file URL",
                          style: GoogleFonts.montserrat(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      decoration: BoxDecoration(
                          color: Color(0xffDCDCDC),
                          border: Border(
                              top: BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(153, 47, 72, 88)),
                              right: BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(153, 47, 72, 88)),
                              bottom: BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(153, 47, 72, 88)))),
                      child: Text(
                        "Upload",
                        style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(229, 62, 77, 113),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product Title",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50.0,
                  child: TextFormField(
                    cursorColor: Color(0xff2F4858),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        text: "Product Title ",
                        style: GoogleFonts.montserrat(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: "(optional)",
                        style: GoogleFonts.montserrat(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(153, 0, 0, 0)),
                      )
                    ])),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50.0,
                  child: TextFormField(
                    cursorColor: Color(0xff2F4858),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  child: TextFormField(
                    minLines: 2,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    cursorColor: Color(0xff2F4858),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(153, 47, 72, 88))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catigorie",
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 40.0,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Allcatigories.listCatigories.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: (() {
                            setState(() {
                              current = index;
                            });
                          }),
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
                              width: 100,
                              // height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: current == index
                                      ? Color(0xff2F4858)
                                      : Colors.white,
                                  border: Border.all(
                                      width: 1,
                                      color: current == index
                                          ? Color(0xff2F4858)
                                          : Colors.transparent)),
                              child: Center(
                                  child: Text(
                                      Allcatigories.listCatigories[index],
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              current == index ? 16.0 : 14.0,
                                          color: Color(0xffDCB08B))))),
                        );
                      })),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                    // padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border:
                            Border.all(color: Color.fromARGB(153, 47, 72, 88))),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffBD532A),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xffBD532A),
                    ),
                    child: Center(
                        child: Text(
                      "Upload",
                      style: GoogleFonts.montserrat(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}