import 'dart:convert';

import 'package:get/get.dart';

import '../data/models/random_user.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  var user = RandomUser().obs;
  var nama = "".obs;
  var gambar = "".obs;
  var street = "".obs;
  var city = "".obs;
  var state = "".obs;
  var country = "".obs;
  var postcode = "".obs;
  var email = "".obs;
  var phone = "".obs;
  var username = "".obs;

  @override
  void onInit() async {
    print('amsuk sini');
    final userData = await http.get(Uri.parse('https://randomuser.me/api'));
    final data = jsonDecode(userData.body);
    nama.value = data['results'][0]['name']['title'] +
        " " +
        data['results'][0]['name']['first'] +
        " " +
        data['results'][0]['name']['last'];
    gambar.value = data['results'][0]['picture']['medium'];
    street.value =
        data['results'][0]['location']['street']['number'].toString() +
            " " +
            data['results'][0]['location']['street']['name'];
    city.value = data['results'][0]['location']['city'];
    state.value = data['results'][0]['location']['state'];
    country.value = data['results'][0]['location']['country'];
    postcode.value = data['results'][0]['location']['postcode'].toString();
    email.value = data['results'][0]['email'];
    phone.value = data['results'][0]['phone'];
    username.value = data['results'][0]['login']['username'];
    // print(data['results'][0]['email']);

    // print(data);
    user(RandomUser.fromJson(data));
    print(user);
    refresh();
    super.onInit();
  }
}
