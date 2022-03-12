import 'dart:convert';
import 'package:get/get.dart';
import 'package:klikdaily/app/data/models/list_cart.dart';
import 'package:klikdaily/app/data/models/list_model.dart';

class HomeController extends GetxController {
  late List<ListData> listdataBeli;
  List<ListCart> listCart = [];
  var itemsList = <ListCart>[].obs;

  void buy(List list, int index) async {
    final listData = jsonEncode(list[index]);
    final json = jsonDecode(listData);
    var id = DateTime.now().millisecondsSinceEpoch.remainder(100000);

    int indexID = listCart.indexWhere((data) {
      return data.nama == json['nama'];
    });

    if (indexID == -1) {
      listCart.add(ListCart(
          id: id.toString(),
          gambar: json['gambar'],
          nama: json['nama'],
          harga: json['harga'],
          satuan: json['satuan'],
          qty: 1,
          total: json['harga'],
          rate: json['rate']));

      // cart.value = listCart;
    } else {
      int prevQty = int.parse(listCart[index].qty.toString());

      listCart[index] = ListCart(
          id: id.toString(),
          gambar: json['gambar'],
          nama: json['nama'],
          harga: json['harga'],
          satuan: json['satuan'],
          qty: (prevQty + 1),
          total: json['harga'],
          rate: json['rate']);
    }

    itemsList.assignAll(listCart);

    // print(jsonEncode(listCart));
    print(itemsList);
    refresh();
    update();
  }
}
