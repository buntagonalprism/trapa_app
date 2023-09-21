// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancellationPolicy _$$_CancellationPolicyFromJson(
        Map<String, dynamic> json) =>
    _$_CancellationPolicy(
      cancellable: json['cancellable'] as bool,
      cutoffs: (json['cutoffs'] as List<dynamic>)
          .map((e) => CancellationCutoff.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CancellationPolicyToJson(
        _$_CancellationPolicy instance) =>
    <String, dynamic>{
      'cancellable': instance.cancellable,
      'cutoffs': instance.cutoffs,
    };
