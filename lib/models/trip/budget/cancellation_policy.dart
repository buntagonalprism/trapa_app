import 'package:freezed_annotation/freezed_annotation.dart';

import 'cancellation_cutoff.dart';

part 'cancellation_policy.freezed.dart';
part 'cancellation_policy.g.dart';

@freezed
class CancellationPolicy with _$CancellationPolicy {
  const CancellationPolicy._();

  const factory CancellationPolicy({
    required bool cancellable,
    required List<CancellationCutoff> cutoffs,
  }) = _CancellationPolicy;

  factory CancellationPolicy.fromJson(Map<String, dynamic> json) =>
      _$CancellationPolicyFromJson(json);
}
