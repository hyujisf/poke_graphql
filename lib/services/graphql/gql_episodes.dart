import 'package:graphql/client.dart';

class GqlEpisodes {
  static const String getAllEpisodes = r'''
    query {
      episodes {
        results {
          name
          air_date
          episode
        }
      }
    }
  ''';

  static QueryOptions getAllEpisodesOptions() {
    return QueryOptions(
      document: gql(getAllEpisodes),
    );
  }
}
