import 'dart:io';

void main() {
  double numero1 = 0;
  String operacao = "";
  double numero2 = 0;

  void soma() {
    print(numero1 + numero2);
  }

  void divisao() {
    print(numero1 / numero2);
  }

  void mult() {
    print(numero1 * numero2);
  }

  void sub() {
    print(numero1 - numero2);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
      case "-":
        sub();
      case "/":
        divisao();
      case "*":
        mult();
        break;
    }
  }

  print("Digite o primeiro valor");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numero1 = double.parse(entrada);
    }
  }

  print("Digite a operação (+,-,/,*):");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }

  print("Digite o segundo valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numero2 = double.parse(entrada);
    }
  }

  calcular();
}
