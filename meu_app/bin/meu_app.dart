import 'dart:io';

void main (){
print('\nCalculadora do dj');
print('\nDigite o primeiro numero:');
int num1=int.parse(stdin.readLineSync()!);
print('\nDigite o segundo numero:');
int num2=int.parse(stdin.readLineSync()!);
soma(num1, num2);
subtracao(num1, num2);
multiplicacao(num1, num2);
divisao(num1, num2);

}

 void soma(num1, num2){

    print('\nResultado da soma de $num1 + $num2 = ${num1+num2}');
 }

  void subtracao(num1, num2){

    print('\nResultado da subtração de $num1 - $num2 = ${num1-num2}');
 }

   void multiplicacao(num1, num2){

    print('\nResultado da multiplicação de $num1 * $num2 = ${num1*num2}');
 }

    void divisao(num1, num2){

    print('\nResultado da divisão de $num1 / $num2 = ${num1/num2}');
 }