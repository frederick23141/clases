void main() {
  final mySquare = Square(side: -10);
  //mySquare.side = 5;
  print(mySquare.area);
}

class Square {
  //final por que no cambia en la clase
  // el termino _ se toma como privado
  double _side;

  Square({required double side})
    //use de acerciones
    : assert(side >= 0, 'side must by >= 0'),
      _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }
}
