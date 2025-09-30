import 'dart:io';

void main() {
  bool continuar = true;

  while (continuar) {
    print('''\n ██████╗ █████╗ ██╗      ██████╗██╗   ██╗██╗      █████╗ ██████╗  ██████╗ 
██╔════╝██╔══██╗██║     ██╔════╝██║   ██║██║     ██╔══██╗██╔══██╗██╔═══██╗
██║     ███████║██║     ██║     ██║   ██║██║     ███████║██║  ██║██║   ██║
██║     ██╔══██║██║     ██║     ██║   ██║██║     ██╔══██║██║  ██║██║   ██║
╚██████╗██║  ██║███████╗╚██████╗╚██████╔╝███████╗██║  ██║██████╔╝╚██████╔╝
 ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ 
                                                                          
██████╗  █████╗     ██████╗  ██████╗     ██████╗      ██╗                 
██╔══██╗██╔══██╗    ██╔══██╗██╔═══██╗    ██╔══██╗     ██║                 
██████╔╝███████║    ██║  ██║██║   ██║    ██║  ██║     ██║                 
██╔══██╗██╔══██║    ██║  ██║██║   ██║    ██║  ██║██   ██║                 
██║  ██║██║  ██║    ██████╔╝╚██████╔╝    ██████╔╝╚█████╔╝                 
╚═╝  ╚═╝╚═╝  ╚═╝    ╚═════╝  ╚═════╝     ╚═════╝  ╚════╝                  ''');

print('''\n #########\                                                      #########\
 #(=====)# |                           ///                       #(=====)# |
 ######### |                         _(oo)_                      ######### |
 #-------# |                        // \/ //                     #-------# |
 #|  -  |# |          -- __________//____//__________--          #|  -  |# |
 #|( O )|# |    --  --  /-/\-  -+/ -+- -+- /-/\-  -+/| --  --    #|( O )|# |
 #|  -  |# |  --  --   / /( o ) / ^^^ /// / /( o ) / /   --  --  #|  -  |# |
 #|-----|# |--        / &   - o/ ^^^ /// / &   - o/ /          --#|-----|# |
 #########/          |#########|#########|########|/             #########/''');

    int num1 = lerNumero('\nDigite o primeiro número:');

    String operacao;
    bool operacaoValida = false;

    do {
      print('\nDigite a operação (+, -, *, /):');
      operacao = stdin.readLineSync()!;

      int num2;

      switch (operacao) {
        case "+":
          num2 = lerNumero('\nDigite o segundo número:');
          soma(num1, num2);
          operacaoValida = true;
          break;

        case "-":
          num2 = lerNumero('\nDigite o segundo número:');
          subtracao(num1, num2);
          operacaoValida = true;
          break;

        case "*":
          num2 = lerNumero('\nDigite o segundo número:');
          multiplicacao(num1, num2);
          operacaoValida = true;
          break;

        case "/":
          num2 = lerNumero('\nDigite o segundo número:');
          if (num2 == 0) {
            print('Erro: Divisão por zero! Tente outro número.');
          } else {
            divisao(num1, num2);
            operacaoValida = true;
          }
          break;

        default:
          print('Operação inválida! Digite apenas +, -, * ou /');
      }
    } while (!operacaoValida);

   
    print('\nDeseja usar a calculadora novamente? (s/n)');
    String resposta = stdin.readLineSync()!.toLowerCase();
    if (resposta != 's') {
      continuar = false;
      print('\nEncerrando a calculadora... Até mais!');
    }
  }
}


int lerNumero(String mensagem) {
  while (true) {
    print(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      int? numero = int.tryParse(entrada);
      if (numero != null) {
        return numero;
      }
    }
    print('Entrada inválida! Digite um número inteiro.');
  }
}


void soma(int num1, int num2) {
  print('\nResultado: $num1 + $num2 = ${num1 + num2}');
}

void subtracao(int num1, int num2) {
  print('\nResultado: $num1 - $num2 = ${num1 - num2}');
}

void multiplicacao(int num1, int num2) {
  print('\nResultado: $num1 * $num2 = ${num1 * num2}');
}

void divisao(int num1, int num2) {
  print('\nResultado: $num1 / $num2 = ${num1 / num2}');
}
