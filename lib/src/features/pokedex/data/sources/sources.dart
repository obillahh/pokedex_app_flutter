import 'package:dio/dio.dart';
import 'package:pokedex_application/src/core/api/api_client.dart';
import 'package:pokedex_application/src/core/api/api_endpoints.dart';
import 'package:pokedex_application/src/features/pokedex/data/models/pokedex_response_model.dart';

class PokedexRemoteDataSource {
  PokedexRemoteDataSource({required this.apiClient});

  final ApiClient apiClient;

  Future<PokedexResponseModel> fetchPokedex() async {
    try {
      final response = await apiClient.get(
        ApiEndpoints.pokemonListEndpoint,
      );
      return PokedexResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<PokedexResponseModel> fetchPokedexNextPage(String next) async {
    try {
      final response = await apiClient.get(
        next,
      );
      return PokedexResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
