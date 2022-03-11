import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klikdaily/app/widget/appBarPage.dart';

import '../../../data/models/list_cart.dart';
import '../controllers/cart_controller.dart';

final List<ListCart> listCart = [
  ListCart(
      id: '1',
      gambar: 'assets/icon/apple.png',
      nama: 'Apple Amerika',
      harga: '25000',
      satuan: 'kg',
      qty: '3',
      total: '75000',
      rate: '3'),
  ListCart(
      id: '1',
      gambar: 'assets/icon/apple.png',
      nama: 'Apple Amerika',
      harga: '25000',
      satuan: 'kg',
      qty: '2',
      total: '50000',
      rate: '3'),
  ListCart(
      id: '1',
      gambar: 'assets/icon/apple.png',
      nama: 'Apple Amerika',
      harga: '25000',
      satuan: 'kg',
      qty: '1',
      total: '25000',
      rate: '3'),
];

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          AppBarPage(
            nama: "Cart Product",
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: listCart.length,
                  itemBuilder: (context, index) {
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
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    listCart[index].nama!,
                                    style: GoogleFonts.poppins().copyWith(
                                        color: Colors.black87,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.close,
                                    color: Colors.red,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        '${listCart[index].gambar}'),
                                  )),
                              title: Row(
                                children: [
                                  Text(listCart[index].harga!),
                                  Text('/' + listCart[index].satuan!)
                                ],
                              ),
                              subtitle: Row(
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
                                  ElevatedButton(
                                      onPressed: null,
                                      child: Icon(Icons.minimize)),
                                  Container(
                                    // color: Colors.green,
                                    // height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.fromBorderSide(
                                            BorderSide(color: Colors.green))),
                                    child: Center(
                                      child: Text('-'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
