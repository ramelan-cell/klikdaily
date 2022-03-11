import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: TabBar(
    //     labelColor: Colors.white,
    //     unselectedLabelColor: Colors.green[900],
    //     indicatorColor: Colors.white,
    //     tabs: <Widget>[
    //       Tab(
    //         icon: Icon(Icons.book),
    //         child: Text(
    //           "Claim",
    //           style: TextStyle(fontSize: 12.0),
    //         ),
    //       ),
    //       Tab(
    //         icon: Icon(Icons.history),
    //         child: Text(
    //           "History",
    //           style: TextStyle(fontSize: 12.0),
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: null,
              child: Column(
                children: [Image.asset('assets/icon/house.png'), Text('Home')],
              ),
            ),
            InkWell(
              onTap: null,
              child: Column(
                children: [
                  Image.asset('assets/icon/shopping-cart.png'),
                  Text('Cart')
                ],
              ),
            ),
            InkWell(
              onTap: null,
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
