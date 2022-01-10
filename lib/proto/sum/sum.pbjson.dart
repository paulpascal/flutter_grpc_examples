///
//  Generated code. Do not modify.
//  source: sum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use numbersDescriptor instead')
const Numbers$json = const {
  '1': 'Numbers',
  '2': const [
    const {'1': 'a', '3': 1, '4': 1, '5': 3, '10': 'a'},
    const {'1': 'b', '3': 2, '4': 1, '5': 3, '10': 'b'},
  ],
};

/// Descriptor for `Numbers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numbersDescriptor = $convert.base64Decode('CgdOdW1iZXJzEgwKAWEYASABKANSAWESDAoBYhgCIAEoA1IBYg==');
@$core.Deprecated('Use sumRequestDescriptor instead')
const SumRequest$json = const {
  '1': 'SumRequest',
  '2': const [
    const {'1': 'numbers', '3': 1, '4': 1, '5': 11, '6': '.sum.Numbers', '10': 'numbers'},
  ],
};

/// Descriptor for `SumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumRequestDescriptor = $convert.base64Decode('CgpTdW1SZXF1ZXN0EiYKB251bWJlcnMYASABKAsyDC5zdW0uTnVtYmVyc1IHbnVtYmVycw==');
@$core.Deprecated('Use sumResponseDescriptor instead')
const SumResponse$json = const {
  '1': 'SumResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 3, '10': 'result'},
  ],
};

/// Descriptor for `SumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumResponseDescriptor = $convert.base64Decode('CgtTdW1SZXNwb25zZRIWCgZyZXN1bHQYASABKANSBnJlc3VsdA==');
