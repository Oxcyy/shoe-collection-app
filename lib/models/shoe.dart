class Shoe {
  int? id;
  String nama;
  String merek;
  String ukuran;
  String warna;
  String kondisi;
  String harga;
  DateTime createdAt;

  Shoe({
    this.id,
    required this.nama,
    required this.merek,
    required this.ukuran,
    required this.warna,
    required this.kondisi,
    required this.harga,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Shoe copyWith({
    int? id,
    String? nama,
    String? merek,
    String? ukuran,
    String? warna,
    String? kondisi,
    String? harga,
    DateTime? createdAt,
  }) {
    return Shoe(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      merek: merek ?? this.merek,
      ukuran: ukuran ?? this.ukuran,
      warna: warna ?? this.warna,
      kondisi: kondisi ?? this.kondisi,
      harga: harga ?? this.harga,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
