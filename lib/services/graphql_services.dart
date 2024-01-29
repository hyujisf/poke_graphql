import 'package:graphql/client.dart';

class GraphQLServices {
  static final GraphQLClient _client = GraphQLClient(
    link: HttpLink('https://rickandmortyapi.com/graphql'),
    cache: GraphQLCache(),
  );

  static GraphQLClient getClient() {
    return _client;
  }
}
