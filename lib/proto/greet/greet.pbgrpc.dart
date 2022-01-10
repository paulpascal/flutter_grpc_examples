///
//  Generated code. Do not modify.
//  source: greet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'greet.pb.dart' as $0;
export 'greet.pb.dart';

class GreetServiceClient extends $grpc.Client {
  static final _$greet = $grpc.ClientMethod<$0.GreetRequest, $0.GreetResponse>(
      '/greet.GreetService/Greet',
      ($0.GreetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GreetResponse.fromBuffer(value));

  GreetServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GreetResponse> greet($0.GreetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$greet, request, options: options);
  }
}

abstract class GreetServiceBase extends $grpc.Service {
  $core.String get $name => 'greet.GreetService';

  GreetServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GreetRequest, $0.GreetResponse>(
        'Greet',
        greet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GreetRequest.fromBuffer(value),
        ($0.GreetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GreetResponse> greet_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GreetRequest> request) async {
    return greet(call, await request);
  }

  $async.Future<$0.GreetResponse> greet(
      $grpc.ServiceCall call, $0.GreetRequest request);
}
