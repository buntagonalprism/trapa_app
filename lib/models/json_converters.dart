import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateConverter implements JsonConverter<DateTime, String> {
  const DateConverter();

  @override
  DateTime fromJson(String date) {
    return dateFormat.parse(date);
  }

  @override
  String toJson(DateTime date) => dateFormat.format(date);

  static final dateFormat = DateFormat('yyyy-MM-dd');
}
