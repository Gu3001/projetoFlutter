import 'package:primeira_aula/primeira_aula.dart' as primeira_aula;
import 'dart:io';


void main(List<String> arguments) {
  //como pedir dados - aula 6
  // print('Informe o seu Nome: ');
  // var nome = stdin.readLineSync();
  
  // print('Informe a Idade: ');
  // var entradaIdade = stdin.readLineSync();
  // var idade = int.parse(entradaIdade);

  // print('Informe o salário: ');
  // String entradaSalario = stdin.readLineSync();
  // double salario = double.parse(entradaSalario);

  // print('Hello world: ${primeira_aula.calculate()}!, $nome, $idade, $salario');
  
  //IF e Else - aula 7
  // print('Infome sua Nota: ');
  // var entradaNota = stdin.readLineSync();
  // var nota = double.parse(entradaNota);
  // var notaFaltou = 6 - nota;

  // print('Infome sua Nota de Recuperacao: ');
  // var entradaNotaRecup = stdin.readLineSync();
  // var notaRecup = double.parse(entradaNotaRecup);
  // var notaFaltouRecup = 6 - notaRecup;

  // print('Informe o % da sua presença: ');
  // var entradaPresenca = stdin.readLineSync();
  // var presenca = int.parse(entradaPresenca);

  // if((nota > 5.99 || notaRecup > 5.99) && presenca >= 75) {
  //   print('Você passou! parabéns!');
  // }else{
 
  //   if(presenca < 75) {
  //     print('Reprovou pela presença!');
  //   }else{
  //     if(nota < 6) {
  //       print('Você reprovou! faltou ${notaFaltou}');
  //      }
  //     if (notaRecup < 6) {
  //         print('Você reprovou na Recup! faltou ${notaFaltouRecup}');
  //     }
  //   }
  // }
  //retornos - aula 8

// imprimir();
//   imprimirNome('João');
//aula 9 - whie for each do while
  var nomes = <String>['luiz','gustavo','francisco'];
  
  nomes.add('namo');
  nomes.insert(0, 'luiz');
  // nomes.removeAt(0);
  var quantidade = nomes.length;
  var contador = 0;

do {
  print(nomes[contador]);
    contador++;
} while (contador < quantidade);

nomes.forEach(( nome) => print(nome));

}

// void imprimir(){
//   print('Olá Pessoal!');
// }

// void imprimirNome(String nome){
//   print('Olá ${nome}');
// }