///
//  Generated code. Do not modify.
//  source: greet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use greetingDescriptor instead')
const Greeting$json = const {
  '1': 'Greeting',
  '2': const [
    const {'1': 'firstName', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

/// Descriptor for `Greeting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List greetingDescriptor = $convert.base64Decode('CghHcmVldGluZxIcCglmaXJzdE5hbWUYASABKAlSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgCIAEoCVIIbGFzdE5hbWU=');
@$core.Deprecated('Use greetRequestDescriptor instead')
const GreetRequest$json = const {
  '1': 'GreetRequest',
  '2': const [
    const {'1': 'greeting', '3': 1, '4': 1, '5': 11, '6': '.greet.Greeting', '10': 'greeting'},
  ],
};

/// Descriptor for `GreetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List greetRequestDescriptor = $convert.base64Decode('CgxHcmVldFJlcXVlc3QSKwoIZ3JlZXRpbmcYASABKAsyDy5ncmVldC5HcmVldGluZ1IIZ3JlZXRpbmc=');
@$core.Deprecated('Use greetResponseDescriptor instead')
const GreetResponse$json = const {
  '1': 'GreetResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `GreetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List greetResponseDescriptor = $convert.base64Decode('Cg1HcmVldFJlc3BvbnNlEhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
