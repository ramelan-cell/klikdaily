import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:klikdaily/app/modules/home/controllers/home_controller.dart';
import 'package:klikdaily/app/widget/appBarPage.dart';
import 'package:klikdaily/app/widget/tabBarPage.dart';

import '../../../data/models/list_cart.dart';
import '../controllers/cart_controller.dart';

// final List<ListCart> listCart = [
//   ListCart(
//       id: '1',
//       gambar: 'assets/icon/apple.png',
//       nama: 'Apple Amerika',
//       harga: '25000',
//       satuan: 'kg',
//       qty: '3',
//       total: '75000',
//       rate: '3'),
//   ListCart(
//       id: '1',
//       gambar: 'assets/icon/apple.png',
//       nama: 'Apple Amerika',
//       harga: '25000',
//       satuan: 'kg',
//       qty: '2',
//       total: '50000',
//       rate: '3'),
//   ListCart(
//       id: '1',
//       gambar: 'assets/icon/apple.png',
//       nama: 'Apple Amerika',
//       harga: '25000',
//       satuan: 'kg',
//       qty: '1',
//       total: '25000',
//       rate: '3'),
// ];

class CartView extends GetView<CartController> {
  final homeCart = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("#,##0.00", "en_US");
    return Scaffold(
      body: Container(
        child: Obx(
          () => Column(
            children: [
              AppBarPage(
                nama: "Cart Product",
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: homeCart.itemsList.length,
                      itemBuilder: (context, index) {
                        // print(homeCart.itemsList[index]);
                        // return Text('abcd');

                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.fromBorderSide(
                                    BorderSide(color: Colors.grey)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        homeCart.itemsList[index].nama!,
                                        style: GoogleFonts.poppins().copyWith(
                                            color: Colors.black87,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                        onTap: () =>
                                            controller.removeFromList(index),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.red,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ListTile(
                                  leading: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                            '${homeCart.itemsList[index].gambar}'),
                                      )),
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(f.format(int.parse(
                                          homeCart.itemsList[index].harga!))),
                                      Text('/' +
                                          homeCart.itemsList[index].satuan!)
                                    ],
                                  ),
                                  subtitle: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
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
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      InkWell(
                                        onTap: () =>
                                            controller.decrementQuantity(index),
                                        child: Container(
                                          // color: Colors.green,
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.fromBorderSide(
                                                  BorderSide(
                                                      color: Colors.green))),
                                          child: Center(
                                            child: Text(
                                              '-',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 40,
                                        child: Center(
                                          child: Text(
                                            '${homeCart.itemsList[index].qty}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () =>
                                            controller.incrementQuantity(index),
                                        child: Container(
                                          // color: Colors.green,
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.fromBorderSide(
                                                  BorderSide(
                                                      color: Colors.green))),
                                          child: Center(
                                            child: Text(
                                              '+',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Total ${controller.subQty} Item",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 3,
                              width: 85,
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                            Text(
                              "${controller.subTotal}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabBarPage(),
    );
  }
}
