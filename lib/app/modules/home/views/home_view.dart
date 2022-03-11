import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: Get.width,
              height: 150,
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
                                'Tangerang,Indonesia',
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
                        child: CircleAvatar(
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
                  onPressed: null,
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, fixedSize: Size(120, 40)),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Orange'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, fixedSize: Size(120, 40)),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Banana'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, fixedSize: Size(120, 40)),
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
                        subtitle: Row(
                          children: [
                            Text(listData[index].harga!),
                            Text('/' + listData[index].satuan!)
                          ],
                        ),
                        trailing: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: null,
                          child: Text(
                            'Beli',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: TabBarPage(),
    );
  }
}
