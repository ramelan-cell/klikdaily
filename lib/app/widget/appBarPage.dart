import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarPage extends StatelessWidget {
  String? nama;
  AppBarPage({this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(color: Color.fromARGB(255, 47, 161, 50)),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30),
        child: Text(
          nama!,
          style: GoogleFonts.poppins().copyWith(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
