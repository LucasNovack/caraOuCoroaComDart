import 'dart:math';
import 'dart:io';

jogoMoeda() {
  var coin = Random().nextInt(2).toString();
  var resultado = null;

  coin == "0" ? resultado = "Cara" : resultado = "Coroa";

  stdout.write("Digite 0 para cara e 1 para coroa: ");
  var escolha = stdin.readLineSync();

  if (escolha == "1" && coin == "1" || escolha == "0" && coin == "0") {
    print("Parabéns, você venceu! O resultado deu $resultado");
  } else {
    print("Infelizmente você perdeu, o resultado é $resultado");
  }

  stdout.write("Deseja jogar novamente? s/n: ");
  dynamic reJogo = stdin.readLineSync();

  if (reJogo == "s") {
    jogoMoeda();
  }
}

main() {
  print("Bem vindo ao Jogo de cara ou coroa!!");
  jogoMoeda();
  print("Obrigado pelo seu tempo!");
}
