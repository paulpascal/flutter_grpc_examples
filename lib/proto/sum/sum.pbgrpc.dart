///
//  Generated code. Do not modify.
//  source: sum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sum.pb.dart' as $0;
export 'sum.pb.dart';

class SumClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.SumRequest, $0.SumResponse>(
      '/sum.Sum/Add',
      ($0.SumRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SumResponse.fromBuffer(value));

  SumClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SumResponse> add($0.SumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add, request, options: options);
  }
}

abstract class SumServiceBase extends $grpc.Service {
  $core.String get $name => 'sum.Sum';

  SumServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SumRequest, $0.SumResponse>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SumRequest.fromBuffer(value),
        ($0.SumResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SumResponse> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SumRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$0.SumResponse> add(
      $grpc.ServiceCall call, $0.SumRequest request);
}
