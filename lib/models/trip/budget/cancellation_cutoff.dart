import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancellation_cutoff.freezed.dart';
part 'cancellation_cutoff.g.dart';

@freezed
class CancellationCutoff with _$CancellationCutoff {
  const CancellationCutoff._();

  const factory CancellationCutoff({
    required int daysBefore,
    double? percentageLost,
    double? amountLost,
  }) = _CancellationCutoff;

  factory CancellationCutoff.fromJson(Map<String, dynamic> json) =>
      _$CancellationCutoffFromJson(json);
}
