import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/details.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class Region with _$Region {
  const Region._();

  const factory Region({
    required String name,
    required Region parentRegion,
    required String countryCode,
    Details? details,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
