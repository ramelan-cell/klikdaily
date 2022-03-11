import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/appBarPage.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          AppBarPage(
            nama: "Profile",
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: Get.width * 0.5,
              height: Get.width * 0.5,
              // color: Colors.red,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.green,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/icon/account.png'),
                        maxRadius: 70,
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              child: Icon(Icons.camera_alt_rounded),
                            ),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ramelan Eko Pamuji',
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: Get.height,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 243, 243),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                children: [
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Image.asset('assets/icon/id-card.png'),
                        hintText: "yellowcart157",
                        hintStyle: GoogleFonts.poppins().copyWith(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Image.asset('assets/icon/email.png'),
                        hintText: "eko@gmail.com",
                        hintStyle: GoogleFonts.poppins().copyWith(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Image.asset('assets/icon/phone.png'),
                        hintText: "08381399782",
                        hintStyle: GoogleFonts.poppins().copyWith(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Image.asset('assets/icon/location.png'),
                        hintText: "Pinang raya pamulang timur",
                        hintStyle: GoogleFonts.poppins().copyWith(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
