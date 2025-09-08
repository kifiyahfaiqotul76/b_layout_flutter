class Item {
  final String name;
  final String imageUrl; // path gambar di assets
  final int price;
  final int stock;
  final double rating;

  Item({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.stock,
    required this.rating,
  });
}
