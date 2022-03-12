import 'package:get/get.dart';
import 'package:klikdaily/app/data/models/list_cart.dart';
import 'package:klikdaily/app/modules/home/controllers/home_controller.dart';

class CartController extends GetxController {
  //TODO: Implement CartController
  final cartHome = Get.put(HomeController());

  var subTotal = 0.obs;
  var subQty = 0.obs;

  void removeFromList(int index) {
    cartHome.itemsList.removeAt(index);
    update();
    refresh();
  }

  void incrementQuantity(int index) {
    if (cartHome.itemsList[index].qty! <= 999) {
      int quantity = cartHome.itemsList[index].qty! + 1;
      cartHome.itemsList[index].qty = quantity++;
      subTotalCart();
      subQtyCart();
      refresh();
    }
  }

  void decrementQuantity(int index) {
    if (cartHome.itemsList[index].qty! > 1) {
      int quantity = cartHome.itemsList[index].qty! - 1;
      cartHome.itemsList[index].qty = quantity--;
      subTotalCart();
      subQtyCart();
      refresh();
    }
  }

  void subTotalCart() {
    int _total = 0;
    int _subtotal = 0;

    cartHome.itemsList.forEach((order) {
      _total =
          int.parse(order.qty.toString()) * int.parse(order.harga.toString());
      _subtotal = _subtotal + _total;
    });

    subTotal.value = _subtotal;
  }

  void subQtyCart() {
    int _total = 0;
    int _subqty = 0;

    cartHome.itemsList.forEach((order) {
      _total = int.parse(order.qty.toString());
      _subqty = _subqty + _total;
    });

    subQty.value = _subqty;
  }
}
