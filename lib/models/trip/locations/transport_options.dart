import 'package:freezed_annotation/freezed_annotation.dart';

import 'region.dart';
import 'transport_leg.dart';

part 'transport_options.freezed.dart';
part 'transport_options.g.dart';

@freezed
class TransportOptions with _$TransportOptions {
  const TransportOptions._();

  const factory TransportOptions({
    required Region departure,
    required Region destination,
    required List<TransportOption> options,
  }) = _TransportOptions;

  factory TransportOptions.fromJson(Map<String, dynamic> json) => _$TransportOptionsFromJson(json);
}
