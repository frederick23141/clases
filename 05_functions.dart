void main() {
  print(greetEveryOne());
  print('Suma: ${addTwoNumbersL(20, 20)}');

  print(greetPerson(name: 'Federico', message: 'Hola!'));
}

String greetEveryone() {
  return 'Hello everyone!';
}

//funcio de flecha es para retornar directamente
String greetEveryOne() => ' => Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

//Param [ int b = 0 ] puede ser parametro opcional se valida que si es null, sea cero
int addTwoNumbersL(int a, [int b = 0]) => a + b;

//Param required es requerido por la funcion
String greetPerson({required String name, String message = 'hola'}) {
  return '$message Federico';
}
