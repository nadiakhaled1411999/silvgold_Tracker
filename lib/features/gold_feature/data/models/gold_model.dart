class GoldModel {
  final String name;
  final num price;
  final String symbol;
  final DateTime updatedAt;
  final String updatedAtReadable;

  GoldModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'] ?? '',
      price: json['price'] ,
      symbol: json['symbol'] ?? '',
      updatedAt: DateTime.parse(json['updatedAt']),
      updatedAtReadable: json['updatedAtReadable'] ?? '',
    );
  }


}
