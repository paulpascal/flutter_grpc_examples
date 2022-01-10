///
//  Generated code. Do not modify.
//  source: sum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Numbers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Numbers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sum'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'a')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'b')
    ..hasRequiredFields = false
  ;

  Numbers._() : super();
  factory Numbers({
    $fixnum.Int64? a,
    $fixnum.Int64? b,
  }) {
    final _result = create();
    if (a != null) {
      _result.a = a;
    }
    if (b != null) {
      _result.b = b;
    }
    return _result;
  }
  factory Numbers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Numbers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Numbers clone() => Numbers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Numbers copyWith(void Function(Numbers) updates) => super.copyWith((message) => updates(message as Numbers)) as Numbers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Numbers create() => Numbers._();
  Numbers createEmptyInstance() => create();
  static $pb.PbList<Numbers> createRepeated() => $pb.PbList<Numbers>();
  @$core.pragma('dart2js:noInline')
  static Numbers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Numbers>(create);
  static Numbers? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get a => $_getI64(0);
  @$pb.TagNumber(1)
  set a($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get b => $_getI64(1);
  @$pb.TagNumber(2)
  set b($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);
}

class SumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SumRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sum'), createEmptyInstance: create)
    ..aOM<Numbers>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numbers', subBuilder: Numbers.create)
    ..hasRequiredFields = false
  ;

  SumRequest._() : super();
  factory SumRequest({
    Numbers? numbers,
  }) {
    final _result = create();
    if (numbers != null) {
      _result.numbers = numbers;
    }
    return _result;
  }
  factory SumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumRequest clone() => SumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumRequest copyWith(void Function(SumRequest) updates) => super.copyWith((message) => updates(message as SumRequest)) as SumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SumRequest create() => SumRequest._();
  SumRequest createEmptyInstance() => create();
  static $pb.PbList<SumRequest> createRepeated() => $pb.PbList<SumRequest>();
  @$core.pragma('dart2js:noInline')
  static SumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumRequest>(create);
  static SumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Numbers get numbers => $_getN(0);
  @$pb.TagNumber(1)
  set numbers(Numbers v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumbers() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumbers() => clearField(1);
  @$pb.TagNumber(1)
  Numbers ensureNumbers() => $_ensure(0);
}

class SumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SumResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sum'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  SumResponse._() : super();
  factory SumResponse({
    $fixnum.Int64? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory SumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumResponse clone() => SumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumResponse copyWith(void Function(SumResponse) updates) => super.copyWith((message) => updates(message as SumResponse)) as SumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SumResponse create() => SumResponse._();
  SumResponse createEmptyInstance() => create();
  static $pb.PbList<SumResponse> createRepeated() => $pb.PbList<SumResponse>();
  @$core.pragma('dart2js:noInline')
  static SumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumResponse>(create);
  static SumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get result => $_getI64(0);
  @$pb.TagNumber(1)
  set result($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

