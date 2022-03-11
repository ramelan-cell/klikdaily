class ListData {
  String? gambar;
  String? nama;
  String? harga;
  String? satuan;
  String? rate;

  ListData({
    this.gambar,
    this.nama,
    this.harga,
    this.satuan,
    this.rate,
  });

  ListData.fromJson(Map<String, dynamic> json) {
    gambar = json['gambar'];
    nama = json['nama'];
    harga = json['harga'];
    satuan = json['satuan'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['gambar'] = gambar;
    data['nama'] = nama;
    data['harga'] = harga;
    data['satuan'] = satuan;
    data['rate'] = rate;

    return data;
  }
}
