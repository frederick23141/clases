void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'dito',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  print(pokemon);
  print(pokemon['name']);
  print(pokemon['sprites'][1]);
}
