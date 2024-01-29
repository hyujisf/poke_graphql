import 'package:graphql/client.dart';
import 'package:poke_graphql/services/graphql_services.dart';
import 'package:poke_graphql/services/graphql/gql_characters.dart';
import 'package:poke_graphql/services/graphql/gql_episodes.dart';
import 'package:poke_graphql/services/graphql/gql_locations.dart';

void main() async {
  final client = GraphQLServices.getClient();

  await fetchCharacters(client);
  await fetchEpisodes(client);
  await fetchLocations(client);
}

Future<void> fetchCharacters(GraphQLClient client) async {
  final result = await client.query(GqlCharacters.getAllCharactersOptions());

  if (result.hasException) {
    print('Error fetching characters: ${result.exception}');
  } else {
    print('Characters:');
    for (final character in result.data?['characters']['results']) {
      print(' - ${character['name']}');
    }
  }
}

Future<void> fetchEpisodes(GraphQLClient client) async {
  final result = await client.query(GqlEpisodes.getAllEpisodesOptions());

  if (result.hasException) {
    print('Error fetching episodes: ${result.exception}');
  } else {
    print('Episodes:');
    for (final episode in result.data?['episodes']['results']) {
      print(' - ${episode['name']}');
    }
  }
}

Future<void> fetchLocations(GraphQLClient client) async {
  final result = await client.query(GqlLocations.getAllLocationsOptions());

  if (result.hasException) {
    print('Error fetching locations: ${result.exception}');
  } else {
    print('Locations:');
    for (final location in result.data?['locations']['results']) {
      print(' - ${location['name']}');
    }
  }
}
