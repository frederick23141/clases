//Streams
void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  //alguien debe estar escuchando el stream para poder
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('Desde periodic $value');
    return value;
  }).take(5);
}

//take metodo propio para controlar que se va a limitar o cantidad de interaciones
