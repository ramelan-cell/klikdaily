import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klikdaily/app/controllers/auth_controller.dart';
import 'package:klikdaily/app/widget/tabBarPage.dart';

import '../../../widget/appBarPage.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    // print('eko');
    // print(authC.user);
    // final userData = jsonEncode(authC.user);
    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              AppBarPage(
                nama: "Profile",
              ),
              Container(
                width: Get.width * 0.5,
                height: Get.width * 0.5,
                // color: Colors.red,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          // ignore: unnecessary_null_comparison
                          child: authC.gambar.isEmpty
                              ? CircularProgressIndicator()
                              : CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      NetworkImage('${authC.gambar}'),
                                  maxRadius: 60,
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${authC.nama}',
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
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
                            hintText: "${authC.username}",
                            hintStyle: GoogleFonts.poppins().copyWith(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
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
                            hintText: "${authC.email}",
                            hintStyle: GoogleFonts.poppins().copyWith(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
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
                            hintText: "${authC.phone}",
                            hintStyle: GoogleFonts.poppins().copyWith(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
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
                            hintText: "${authC.street} ${authC.city}",
                            hintStyle: GoogleFonts.poppins().copyWith(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabBarPage(),
    );
  }
}
