class Product {
  final int? id;
  final String? code;
  final String type;
  final String? brand;
  final String? cpu;
  final String? ram;
  final String? hdd;

  Product({
    this.id,
    this.code,
    required this.type,
    this.brand,
    this.cpu,
    this.ram,
    this.hdd,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'type': type,
      'brand': brand,
      'cpu': cpu,
      'ram': ram,
      'hdd': hdd,
    };
  }
}
