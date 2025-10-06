class Item {
  String name;
  int price;
  String imageUrl; // URL foto produk
  int stock; // Jumlah stok produk
  double rating; // Rating produk

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}
