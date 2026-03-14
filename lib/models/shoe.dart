class Shoe {
  String? id;
  String nama;
  String merek;
  String ukuran;
  String warna;
  String kondisi;
  String harga;
  DateTime? createdAt;

  Shoe({
    this.id,
    required this.nama,
    required this.merek,
    required this.ukuran,
    required this.warna,
    required this.kondisi,
    required this.harga,
    this.createdAt,
  });

  factory Shoe.fromMap(Map<String, dynamic> map) {
    return Shoe(
      id: map['id']?.toString(),
      nama: map['nama'] ?? '',
      merek: map['merek'] ?? '',
      ukuran: map['ukuran'] ?? '',
      warna: map['warna'] ?? '',
      kondisi: map['kondisi'] ?? '',
      harga: map['harga'] ?? '',
      createdAt: map['created_at'] != null
          ? DateTime.parse(map['created_at'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'merek': merek,
      'ukuran': ukuran,
      'warna': warna,
      'kondisi': kondisi,
      'harga': harga,
    };
  }
}
