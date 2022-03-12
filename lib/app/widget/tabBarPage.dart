import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klikdaily/app/routes/app_pages.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => Get.toNamed(Routes.HOME),
              child: Column(
                children: [Image.asset('assets/icon/house.png'), Text('Home')],
              ),
            ),
            InkWell(
              onTap: () => Get.toNamed(Routes.CART),
              child: Column(
                children: [
                  Image.asset('assets/icon/shopping-cart.png'),
                  Text('Cart')
                ],
              ),
            ),
            InkWell(
              onTap: () => Get.toNamed(Routes.PROFILE),
              child: Column(
                children: [
                  Image.asset('assets/icon/account.png'),
                  Text('Profile')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
