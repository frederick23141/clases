//clases
void main() {
  //llamado sin posicionamiento
  //  final wolverine = new Hero('Logan',
  // Regeneracion');

  final Map<String, dynamic> rawJson = {
    'name': 'pool',
    'power': 'any',
    'isAlive': true,
  };

  //llamado con posicionamiento
  final wolverine = Hero(name: 'pool', power: 'all');

  //llamado con map
  final wolverine2 = Hero.fromJson(rawJson);

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);

  print(wolverine2.toString());
}

//
class Hero {
  String name;
  String power;
  bool isAlive;

  //constructor normal
  //Hero(this.name, this.power);

  //constructor con posicion
  Hero({required this.name, required this.power, this.isAlive = false});

  //metodo para recibir peticiones https. o json
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  //inicializacion tardia
  //Hero(String name, String power) : name =  	   //name, power = power;

  @override
  String toString() {
    return '$name , $power , isAlive: ${isAlive ? 'Yes' : 'Nope'}';
  }
}
