import 'package:flutter_application_2/Core/Dioclient.dart';
import 'package:flutter_application_2/Infraestructure/Models/PokeModel.dart';

class Pokemonremotesource {
  final Dioclient dioclient;

  Pokemonremotesource({required this.dioclient});

  Future<PokeApi> getPokemon(int id) async {
    final response = await dioclient.dio.get('pokemon/ $id');
    return PokeApi.fromJson(response.data);
  }
}
