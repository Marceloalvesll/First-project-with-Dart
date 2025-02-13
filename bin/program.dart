import 'dart:io';

void main() {
  int escolha = 0;

  while (escolha != 21) {
    print("\nEscolha um programa (1-20) ou 21 para sair:");
    escolha = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (escolha) {
      case 1:
        print("Exibe uma mensagem 'Hello, Dart!'");
        imprimirHello();
        break;
      case 2:
        print("Declara e imprime variáveis de tipos diferentes.");
        variaveisETipos();
        break;
      case 3:
        print("Realiza operações matemáticas com dois números fornecidos.");
        operacoesMatematicas();
        break;
      case 4:
        print("Converte um número double para int e vice-versa.");
        conversaoDeTipos();
        break;
      case 5:
        print("Verifica se um número é par ou ímpar.");
        verificarParOuImpar();
        break;
      case 6:
        print(
            "Recebe um número e exibe o nome do dia da semana correspondente.");
        verificarDiaSemana();
        break;
      case 7:
        print("Exibe os números de 1 a 10 utilizando um loop 'for'.");
        loopFor();
        break;
      case 8:
        print("Soma os números de 1 a 100 utilizando um loop 'while'.");
        loopWhile();
        break;
      case 9:
        print("Cria uma lista de frutas e imprime cada uma delas.");
        listaSimples();
        break;
      case 10:
        print("Cria um mapa com nomes e idades e exibe os valores.");
        mapaDicionario();
        break;
      case 11:
        print("Calcula e exibe a soma de dois números usando uma função.");
        print(soma(5, 10));
        break;
      case 12:
        print(
            "Exibe uma saudação, usando 'Visitante' como padrão caso nenhum nome seja passado.");
        saudacao();
        break;
      case 13:
        print("Calcula e exibe o fatorial de um número.");
        print(fatorial(5));
        break;
      case 14:
        print("Ordena uma lista de números.");
        ordenarLista();
        break;
      case 15:
        print("Filtra os números pares de uma lista.");
        filtrarNumerosPares();
        break;
      case 16:
        print("Demonstra tratamento de exceção ao tentar dividir por zero.");
        tratarExcecao();
        break;
      case 17:
        print("Cria um objeto 'Carro' e exibe suas informações.");
        criarCarro();
        break;
      case 18:
        print(
            "Demonstra encapsulamento, tornando um atributo privado e acessível apenas por getter/setter.");
        encapsulamentoCarro();
        break;
      case 19:
        print("Demonstra herança com classes 'Animal', 'Cachorro' e 'Gato'.");
        herancaAnimal();
        break;
      case 20:
        print(
            "Demonstra uso de mixins para adicionar funcionalidades a uma classe.");
        mixinVolante();
        break;
      case 21:
        print("Programa encerrado com sucesso.");
        break;
      default:
        print("Opção inválida! Escolha um número entre 1 e 21.");
    }
  }
}

// Exibe uma mensagem "Hello, Dart!"
void imprimirHello() {
  print("Hello, Dart!");
}

// Declara e imprime variáveis de tipos diferentes
void variaveisETipos() {
  int inteiro = 10;
  double decimal = 3.14;
  String texto = "Dart";
  bool booleano = true;
  print("Int: $inteiro, Double: $decimal, String: $texto, Bool: $booleano");
}

// Solicita dois números ao usuário e realiza operações matemáticas básicas
void operacoesMatematicas() {
  try {
    print("Digite dois números:");

    double a = double.parse(stdin.readLineSync() ?? '0');
    double b = double.parse(stdin.readLineSync() ?? '0');

    print(
        "Soma: ${a + b}, Subtração: ${a - b}, Multiplicação: ${a * b}, Divisão: ${b != 0 ? (a / b) : 'Indefinida'}");
  } catch (e) {
    print("Entrada inválida. Digite números válidos.");
    operacoesMatematicas(); // Chama a função novamente se a entrada for inválida.
  }
}

// Converte um número double para int e vice-versa
void conversaoDeTipos() {
  double numero = 10.5;
  int inteiro = numero.toInt();
  print("Double para Int: $inteiro, Int para Double: ${inteiro.toDouble()}");
}

// Verifica se um número fornecido pelo usuário é par ou ímpar
void verificarParOuImpar() {
  print("Digite um número:");
  int numero = int.parse(stdin.readLineSync() ?? '0');
  print(numero % 2 == 0 ? "Par" : "Ímpar");
}

// Exibe o nome do dia da semana correspondente a um número de 1 a 7
void verificarDiaSemana() {
  print("Digite um número de 1 a 7:");
  int dia = int.parse(stdin.readLineSync() ?? '1');
  List<String> dias = [
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sábado",
    "Domingo"
  ];
  print(dia >= 1 && dia <= 7 ? dias[dia - 1] : "Dia inválido");
}

// Exibe os números de 1 a 10 utilizando um loop 'for'
void loopFor() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Soma os números de 1 a 100 utilizando um loop 'while'
void loopWhile() {
  int soma = 0, i = 1;
  while (i <= 100) {
    soma += i++;
  }
  print("Soma de 1 a 100: $soma");
}

// Cria e exibe uma lista de frutas
void listaSimples() {
  List<String> frutas = ["Maçã", "Banana", "Laranja"];
  frutas.forEach(print);
}

// Cria e exibe um dicionário (mapa) com nomes e idades
void mapaDicionario() {
  Map<String, int> idades = {"Ana": 25, "Pedro": 30};
  idades.forEach((nome, idade) => print("$nome tem $idade anos."));
}

// Retorna a soma de dois números
int soma(int a, int b) => a + b;

// Exibe uma saudação personalizada ou "Visitante" caso nenhum nome seja passado
void saudacao([String nome = "Visitante"]) {
  print("Olá, $nome!");
}

// Calcula o fatorial de um número usando recursão
int fatorial(int n) => (n <= 1) ? 1 : n * fatorial(n - 1);

// Ordena e exibe uma lista de números
void ordenarLista() {
  List<int> numeros = [5, 2, 9, 1, 7];
  numeros.sort();
  print(numeros);
}

// Filtra e exibe apenas os números pares de uma lista
void filtrarNumerosPares() {
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  print(numeros.where((n) => n.isEven).toList());
}

// Demonstra o tratamento de exceções ao tentar dividir por zero
void tratarExcecao() {
  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } catch (e) {
    print("Erro: $e");
  }
}

// Classe representando um Carro
class Carro {
  String marca;
  String _modelo;
  int ano;

  Carro(this.marca, this._modelo, this.ano);

  String get modelo => _modelo;
  set modelo(String novoModelo) => _modelo = novoModelo;

  void exibir() => print("$marca $_modelo $ano");
}

// Cria e exibe um objeto da classe Carro
void criarCarro() {
  var carro = Carro("Ford", "Fiesta", 2020);
  carro.exibir();
}

// Demonstra encapsulamento ao modificar um atributo privado da classe Carro
void encapsulamentoCarro() {
  var carro = Carro("Toyota", "Corolla", 2022);
  carro.modelo = "Yaris";
  carro.exibir();
}

// Classe base representando um Animal
class Animal {
  void emitirSom() => print("Som genérico");
}

// Classe Cachorro que herda de Animal e sobrescreve o método emitirSom
class Cachorro extends Animal {
  @override
  void emitirSom() => print("Au au!");
}

// Demonstra o uso de herança chamando o método emitirSom() de um Cachorro
void herancaAnimal() {
  Cachorro().emitirSom();
}

// Mixin que adiciona a funcionalidade de dirigir
mixin Volante {
  void dirigir() => print("Dirigindo...");
}

// Classe CarroComVolante que usa o mixin Volante
class CarroComVolante with Volante {}

// Demonstra o uso de um mixin chamando o método dirigir()
void mixinVolante() {
  CarroComVolante().dirigir();
}
