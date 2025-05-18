abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Voladores {
  void volar() => print('Estoy volando');
}

mixin Caminadores {
  void caminar() => print('Estoy caminando');
}
// a partir de dart 2.1 es mixin...
//antes era abstract class...
mixin Nadadores {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadadores {}

class Murcielago extends Mamifero with Voladores, Caminadores {}

class Gato extends Mamifero with Caminadores {}

void main() {
  final flipper = Delfin();
  flipper.nadar();
}
