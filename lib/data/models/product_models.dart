class Product {
  final int? id;
  final String? code;
  final String type;
  final String? brand;
  final String? cpu;

  Product({
    this.id,
    this.code,
    required this.type,
    this.brand,
    this.cpu,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'type': type,
      'brand': brand,
      'cpu': cpu,
    };
  }
}
