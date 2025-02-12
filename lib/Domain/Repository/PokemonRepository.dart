import 'package:flutter_application_2/Domain/Entities/Pokemon.dart';

abstract class Pokemonrepository {
  Future<Pokemon> getPokemon(int id);
}
