class CalculatorIMC {
  CalculatorIMC({required this.height, required this.weight});

  final int height;
  final int weight;
  double? imc;

  String calculate() {
    double imc = weight / (height * height) * 10000;
    return imc.toStringAsFixed(1);
  }

  String getTitle() {
    double imc = weight / (height * height);

    if (imc > 25) {
      return 'Acima do peso';
    } else if (imc > 18.5) {
      return 'Peso normal';
    } else {
      return 'Abaixo de peso';
    }
  }

  String getCaption() {
    double imc = weight / (height * height);

    if (imc > 25) {
      return 'Acima do peso';
    } else if (imc > 18.5) {
      return 'Peso normal';
    } else {
      return 'Abaixo de peso';
    }
  }
}
