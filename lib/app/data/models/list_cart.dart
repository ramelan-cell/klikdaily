class ListCart {
  String? id;
  String? gambar;
  String? nama;
  String? harga;
  String? satuan;
  int? qty;
  String? total;
  String? rate;

  ListCart({
    this.id,
    this.gambar,
    this.nama,
    this.harga,
    this.satuan,
    this.qty,
    this.total,
    this.rate,
  });

  ListCart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gambar = json['gambar'];
    nama = json['nama'];
    harga = json['harga'];
    satuan = json['satuan'];
    qty = int.parse(json["qty"]);
    total = json["total"];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['gambar'] = gambar;
    data['nama'] = nama;
    data['harga'] = harga;
    data['satuan'] = satuan;
    data['qty'] = qty;
    data['total'] = total;
    data['rate'] = rate;

    return data;
  }
}
