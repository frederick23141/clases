//clases
void main() {
  //llamado sin posicionamiento
  //  final wolverine = new Hero('Logan', //'Regeneracion');

  //llamado con posicionamiento
  final wolverine = new Hero(name: 'pool', power: 'all');

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

//
class Hero {
  String name;
  String power;

  //constructor normal
  //Hero(this.name, this.power);

  //constructor con posicion
  Hero({required this.name, required this.power});

  //inicializacion tardia
  //Hero(String name, String power) : name =  	   //name, power = power;

  @override
  String toString() {
    return '$name - $power';
  }
}
