class PriceCalculator {
  PriceCalculator(
      {required this.sodas,
      required this.people,
      required this.size,
      required this.initialPrice});

  final int sodas;
  final int people;
  final int size;
  final double initialPrice;

  String calculatePrice() {
    double finalPrice = (initialPrice + (sodas * 1.5) + (size * 0.2)) / people;
    return finalPrice.toStringAsFixed(2);
  }
}
