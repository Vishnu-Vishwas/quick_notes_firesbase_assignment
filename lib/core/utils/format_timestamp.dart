import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FormatTimeStamp {
  static String formatTimeStamp(Timestamp timStamp) {
    final dateTime = timStamp.toDate();
    return DateFormat('dd MMM yyyy, hh:mm a').format(dateTime);
  }
}
