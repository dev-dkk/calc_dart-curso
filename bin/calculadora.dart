import 'dart:io';

void main() {
  void calculadora() {
    double numero1 = 0;
    String operacao = "";
    double numero2 = 0;
    String? entrada = "";
    List<String> operacoes = <String>["+", "-", "*", "/"];

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

    void getOperacao() {
      print("Digite uma operação");
      entrada = stdin.readLineSync();
      if (entrada != null) {
        if (operacoes.contains(entrada)) {
          operacao = entrada!;
        }
      }
    }

    print("Digite o primeiro valor:");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada != "") {
        numero1 = double.parse(entrada!);
      }
    }

    getOperacao();

    print("Digite o segundo valor");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada != "") {
        numero2 = double.parse(entrada!);
      }
    }

    print("Resultado:");

    calcular();
  }

  void verificar_maior_idade() {
    print("Digite Seu Nome!");
    String nome = stdin.readLineSync()!;
    print("Digite Sua Idade!");
    int idade = int.parse(stdin.readLineSync()!);
    print("Digite Seu País!");
    String pais = stdin.readLineSync()!;

    if (idade >= 18 && pais == 'Brasil' || pais == 'brasil') {
      print("No Brasil você é maior de idade, $nome");
    }
    if (idade >= 21 && pais == 'EUA' ||
        pais == 'Estados Unidos' ||
        pais == 'US') {
      print("Nos EUA você é maior de idade, $nome");
    }
  }

  void menu_inicial() {
    print("--------------------------------------------------------");
    print("------------------BRINCANDO COM O DART------------------");
    print("--------------------------------------------------------");
    print("-------------------ESCOLHA UMA OPÇÃO--------------------");
    print("--------------------------------------------------------");
    print("- 1 - Calculadora(Soma, Multplicação, Adição e Divisão)-");
    print("- 2 - Verificar Maior Idade (Brasil e EUA) -------------");
    print("--------------------------------------------------------");
    print("- 0 - Sair ---------------------------------------------");
    print("--------------------------------------------------------");
    int opc = int.parse(stdin.readLineSync()!);
    switch (opc) {
      case 1:
        calculadora();
      case 2:
        verificar_maior_idade();
        break;
    }
  }

  menu_inicial();
}
