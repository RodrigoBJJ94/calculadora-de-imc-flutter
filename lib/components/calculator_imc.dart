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
    double imc = weight / (height * height) * 10000;

    if (imc < 17) {
      return 'Muito abaixo do peso';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Ligeiramente abaixo do peso';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Peso normal';
    } else if (imc >= 25 && imc < 30) {
      return 'Ligeiramente acima do peso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade severa';
    } else {
      return 'Obesidade mórbida';
    }
  }

  String getCaption() {
    double imc = weight / (height * height) * 10000;

    if (imc >= 17 && imc < 30) {
      return 'Você está saudável';
    } else {
      return 'Você não está saudável';
    }
  }
}
