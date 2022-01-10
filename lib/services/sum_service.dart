import 'package:fixnum/fixnum.dart';
import 'package:flutter_grpc_examples/commons/grpc_commons.dart';
import 'package:flutter_grpc_examples/proto/sum/sum.pbgrpc.dart';

class SumService {
  static Future<SumResponse> sum(int numberA, int numberB) async {
    final _client = SumClient(GrpcClientSingleton().clientChannel);
    final _numbers = Numbers()
      ..a = Int64(numberA)
      ..b = Int64(numberB);

    final _sumRequest = SumRequest(numbers: _numbers);

    return await _client.add(_sumRequest);
  }
}
