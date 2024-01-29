import 'package:graphql/client.dart';

class GqlCharacters {
  static const String getAllCharacters = r'''
    query {
      characters {
        results {
          name
          status
          species
        }
      }
    }
  ''';

  static QueryOptions getAllCharactersOptions() {
    return QueryOptions(
      document: gql(getAllCharacters),
    );
  }
}
