// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancellation_cutoff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancellationCutoff _$$_CancellationCutoffFromJson(
        Map<String, dynamic> json) =>
    _$_CancellationCutoff(
      daysBefore: json['daysBefore'] as int,
      percentageLost: (json['percentageLost'] as num?)?.toDouble(),
      amountLost: (json['amountLost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CancellationCutoffToJson(
        _$_CancellationCutoff instance) =>
    <String, dynamic>{
      'daysBefore': instance.daysBefore,
      'percentageLost': instance.percentageLost,
      'amountLost': instance.amountLost,
    };
