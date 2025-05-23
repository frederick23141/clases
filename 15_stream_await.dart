void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

//async* regresa un streams
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    //return no es valido en esta estructura. seusa yield para decir que ten ese valor,
    yield i;
  }
}
