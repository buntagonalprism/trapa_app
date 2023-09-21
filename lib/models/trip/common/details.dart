import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  const Details._();

  const factory Details({
    String? description,
    String? notes, 
    List<String>? links,
    List<String>? images, 
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

}
