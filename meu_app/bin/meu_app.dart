import 'dart:io';

void main() {
  print('\nCalculadora do dj');
  
  print('\nDigite o primeiro numero:');
  int num1 = int.parse(stdin.readLineSync()!);
  
  print('\nDigite o segundo numero:');
  int num2 = int.parse(stdin.readLineSync()!);
  
  String operacao;
  bool operacaovalida = false;
  
  do {
    print('\nDigite a operação (+, -, *, /):');
    operacao = stdin.readLineSync()!;
    
    switch (operacao) 
    {
      
      case "+":
        soma(num1, num2);
        operacaovalida = true;
        break;
      
      case "-":
        subtracao(num1, num2);
        operacaovalida = true;
        break;
      
      case "*":
        multiplicacao(num1, num2);
        operacaovalida = true;
        break;
      
      case "/":
        if (num2 == 0) 
        {
          print('Erro: Divisão por zero! Tente outro número.');
        } 
        
        else 
        {
          divisao(num1, num2);
          operacaovalida = true;
        }
        break;

      default:
        print('Operação inválida! Digite apenas +, -, * ou /');
    }

  } while (operacaovalida==false);

}





void soma(num1, num2) 
{
  print('\nResultado da soma de $num1 + $num2 = ${num1 + num2}');
}

void subtracao(num1, num2) 
{
  print('\nResultado da subtração de $num1 - $num2 = ${num1 - num2}');
}

void multiplicacao(num1, num2) 
{
  print('\nResultado da multiplicação de $num1 * $num2 = ${num1 * num2}');
}

void divisao(num1, num2) 
{
  print('\nResultado da divisão de $num1 / $num2 = ${num1 / num2}');
}