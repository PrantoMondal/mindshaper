import 'dart:developer';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  static DateTime? parseDate(String date) => DateTime.tryParse(date);

  static DateTime? parseTime(String time) {
    try {
      final now = DateTime.now();
      final parts = time.split(':');
      if (parts.length != 2) {
        throw FormatException('Invalid time format');
      }
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);

      return DateTime(
        now.year,
        now.month,
        now.day,
        hour,
        minute,
      );
    } catch (e) {
      // Handle the error, e.g., log it or return null
      log('Error parsing time: $e');
      return null;
    }
  }

  static DateTime? parseDateTime(String dateTime) =>
      DateTime.tryParse(dateTime);

  static String dateToString(DateTime? date) =>
      date?.toIso8601String() ?? DateTime.now().toString();

  static String timeToString(DateTime? time) => (time != null)
      ? '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}'
      : '00:00';

  static String dateTimeToString(DateTime dateTime) =>
      dateTime.toIso8601String();

  static DateTime get now => DateTime.now();

  static String formatTimeAMPM(String time) {
    final DateTime dateTime = DateFormat.Hm().parse(time);

    final String formattedTime = DateFormat.jm().format(dateTime);

    return formattedTime;
  }

  static String formatDate(String format, String date) {
    final DateTime dateTime = DateTime.parse(date);

    final String formattedDate = DateFormat(
      format,
      Get.locale?.languageCode ?? 'en',
    ).format(dateTime);

    return formattedDate;
  }
}
