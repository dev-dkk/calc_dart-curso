import 'dart:io';

void main() {
  switch (menuInicial()) {
    case "1":
      calculadora();
      break;
    case "2":
      verificarMaiorIdade();
      break;
    case "3":
      vldCategoria();
      break;
    case "4":
      notas();
      break;
    case "0":
      break;
  }
}

String menuInicial() {
  print("--------------------------------------------------------");
  print("------------------BRINCANDO COM O DART------------------");
  print("--------------------------------------------------------");
  print("-------------------ESCOLHA UMA OPÇÃO--------------------");
  print("--------------------------------------------------------");
  print("- 1 - Calculadora(Soma, Multplicação, Adição e Divisão)-");
  print("- 2 - Verificar Maior Idade (Brasil e EUA) -------------");
  print("- 3 - Selecionar uma Categoria de Produto --------------");
  print("- 4 - Notas --------------------------------------------");
  print("--------------------------------------------------------");
  print("- 0 - Sair ---------------------------------------------");
  print("--------------------------------------------------------");
  List<String> comando = <String>['1', '2', '3', '4', '0'];
  String? opc = "";
  opc = stdin.readLineSync();
  if (opc == null || !comando.contains(opc)) {
    print("Opção inválida");
    menuInicial();
  }
  return opc!;
}

String menuNotas() {
  print("--------------------------------------------------------");
  print("--------------------BLOCO DE NOTAS----------------------");
  print("--------------------------------------------------------");
  print("-------------------ESCOLHA UMA OPÇÃO--------------------");
  print("--------------------------------------------------------");
  print("- 1 - Nova Nota ----------------------------------------");
  print("- 2 - Listar Notas -------------------------------------");
  print("--------------------------------------------------------");
  print("- 0 - Sair ---------------------------------------------");
  print("--------------------------------------------------------");
  List<String> comandoNota = <String>['1', '2', '0'];
  String? slc = "";
  slc = stdin.readLineSync();
  if (slc == null || !comandoNota.contains(slc)) {
    print("Opção inválida");
    menuNotas();
  }
  return slc!;
}

void calculadora() {
  double numero1 = 0;
  String operacao = "";
  double numero2 = 0;
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/", "!"];

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

  void fatorial() {
    double resultado = 1;
    if (numero1 == 0) {
      print("1");
    } else {
      for (var i = numero1; i > 1; i--) {
        resultado *= i;
      }

      print(resultado);
    }
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
      case "!":
        fatorial();
        break;
    }
  }

  void getValor1() {
    print("Digite o primeiro valor:");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada != "") {
        numero1 = double.parse(entrada!);
      }
    }
  }

  void getOperacao() {
    print("Digite uma operação");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Por favor escolha uma operação válida ${operacoes.toString()}");
        getOperacao();
      }
    }
  }

  void getvalor2() {
    if (operacao != '!') {
      print("Digite o segundo valor");
      entrada = stdin.readLineSync();
      if (entrada != null) {
        if (entrada != "") {
          numero2 = double.parse(entrada!);
        }
      }
    }
  }

  getValor1();
  getOperacao();
  getvalor2();
  print("Resultado:");

  calcular();
}

void verificarMaiorIdade() {
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

void vldCategoria() {
  List<String> categorias = [
    'Eletronicos',
    ' Alimentos',
    'Vestuário',
    'Livros',
  ];
  String? categoria = "";
  void slcInput() {
    print("Digite uma categoria de produto: ${categorias.toString()}");
    categoria = stdin.readLineSync();
    print("Categoria válida: $categoria");
  }

  slcInput();
}

void notas() {
  List<String> notas = <String>[];
  bool verificar = true;
  while (verificar == true) {
    String selecao = menuNotas();
    switch (selecao) {
      case "1":
        adicionarNota(notas);
        break;
      case "2":
        listarNotas(notas);
        print("\nAdicionar nota? y/n");
        String? pergutinha = stdin.readLineSync();
        if (pergutinha == 'y') {
          adicionarNota(notas);
        } else {
          verificar = false;
        }
        break;
      case "0":
        verificar = false;
        break;
    }
  }
}

List<String> adicionarNota(List<String> notas) {
  print("Adicione uma nova nota!");
  String? nota = "";

  nota = stdin.readLineSync();
  if (nota == null || nota.isEmpty) {
    print("A nota não pode ser vazia");
  }
  notas.add(nota!);
  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}
