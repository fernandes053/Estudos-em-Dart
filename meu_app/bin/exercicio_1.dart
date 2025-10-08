import 'dart:io';

void main(){

  List<String> categorias = ['eletronicos', 'alimentos', 'vestuario', 'livros'];

  String categoriadigitada;
  bool categoriavalida = false;

  print('Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):');

  while (!categoriavalida){

    categoriadigitada = stdin.readLineSync()!;

    if (categorias.contains(categoriadigitada)){

      print('Categoria válida: $categoriadigitada');
      categoriavalida = true;
    }

  else{

  print("categoria errada, digite novamente: ");
  }
  }


}


