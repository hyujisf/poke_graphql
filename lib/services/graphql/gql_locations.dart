import 'package:graphql/client.dart';

class GqlLocations {
  static const String getAllLocations = r'''
    query {
      locations {
        results {
          name
          type
          dimension
        }
      }
    }
  ''';

  static QueryOptions getAllLocationsOptions() {
    return QueryOptions(
      document: gql(getAllLocations),
    );
  }
}
