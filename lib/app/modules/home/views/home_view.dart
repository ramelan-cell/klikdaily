import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klikdaily/app/controllers/auth_controller.dart';
import 'package:klikdaily/app/data/models/list_model.dart';

import '../../../widget/tabBarPage.dart';
import '../controllers/home_controller.dart';

final List<ListData> listData = [
  ListData(
      gambar: 'assets/icon/apple.png',
      nama: 'Apple Amerika',
      harga: '25000',
      satuan: 'kg',
      rate: '3'),
  ListData(
      gambar: 'assets/icon/apple.png',
      nama: 'Apple Medan',
      harga: '30000',
      satuan: 'kg',
      rate: '5'),
  ListData(
      gambar: 'assets/icon/apple.png',
      nama: 'Apple bali',
      harga: '20000',
      satuan: 'kg',
      rate: '3'),
];

class HomeView extends GetView<HomeController> {
  final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: Get.width,
                height: 170,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/icon/home-address.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${authC.city},${authC.country}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Find',
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 25),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Fresh Groceries',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 25),
                                )
                              ],
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: authC.gambar.isEmpty
                              ? CircularProgressIndicator()
                              : CircleAvatar(
                                  backgroundImage:
                                      NetworkImage('${authC.gambar}'),
                                  maxRadius: 30,
                                  backgroundColor: Colors.amber,
                                ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                          hintText: "Search Groceries",
                          hintStyle: GoogleFonts.poppins().copyWith(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Categories',
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: Text(
                      'Apple',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // ignore: unrelated_type_equality_checks
                        primary: Colors.green,
                        fixedSize: Size(120, 40),
                        textStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Orange',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        // ignore: unrelated_type_equality_checks
                        primary: Colors.white60,
                        fixedSize: Size(120, 40),
                        textStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Banana',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        // ignore: unrelated_type_equality_checks
                        primary: Colors.white60,
                        fixedSize: Size(120, 40),
                        textStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: listData.length,
                    itemBuilder: (context, index) {
                      print(listData[index].gambar);
                      return Card(
                        child: ListTile(
                          leading: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('${listData[index].gambar}'),
                              )),
                          title: Text(listData[index].nama!),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    listData[index].harga! +
                                        ' /' +
                                        listData[index].satuan!,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                ],
                              )
                            ],
                          ),
                          trailing: Container(
                            child: ElevatedButton(
                              child: Text('Buy'),
                              onPressed: () {
                                controller.buy(listData, index);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabBarPage(),
    );
  }
}
