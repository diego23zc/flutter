import 'package:flutter_application_2/Domain/Entities/Pokemon.dart';
import 'package:flutter_application_2/Domain/Repository/PokemonRepository.dart';

class Getpokemon {
  final Pokemonrepository repository;
  Getpokemon({
    required this.repository,
  });

  Future<Pokemon> getPokemon(int id) async {
    return await repository.getPokemon(id);
  }
}
