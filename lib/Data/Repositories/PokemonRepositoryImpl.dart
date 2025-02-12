import 'package:flutter_application_2/Data/Datasource/PokemonRemoteSource.dart';
import 'package:flutter_application_2/Domain/Entities/Pokemon.dart';
import 'package:flutter_application_2/Domain/Repository/PokemonRepository.dart';

class Pokemonrepositoryimpl implements Pokemonrepository {
  final Pokemonremotesource remoteDataSource;

  Pokemonrepositoryimpl({
    required this.remoteDataSource,
  });

  @override
  Future<Pokemon> getPokemon(int id) async {
    final pokemonModel = await remoteDataSource.getPokemon(id);
    return Pokemon(
        id: pokemonModel.id,
        name: pokemonModel.name,
        imageUrl: pokemonModel.sprites.toString());
  }
}
