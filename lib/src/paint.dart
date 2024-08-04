class Paint {
  String name;
  double costPerSquareMeter;

  Paint({
    required this.name,
    required this.costPerSquareMeter,
  });

  @override
  String toString() {
    return '$name paint costing \$$costPerSquareMeter per square meter';
  }
}
