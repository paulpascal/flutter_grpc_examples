import 'package:flutter_grpc_examples/commons/grpc_commons.dart';
import 'package:flutter_grpc_examples/proto/greet/greet.pbgrpc.dart';

class GreetService {
  static Future<GreetResponse> greet(String firstName, String lastName) async {
    final _client = GreetServiceClient(GrpcClientSingleton().clientChannel);
    final _greeting = Greeting()
      ..firstName = firstName
      ..lastName = lastName;
    final _request = GreetRequest(greeting: _greeting);
    return await _client.greet(_request);
  }
}
