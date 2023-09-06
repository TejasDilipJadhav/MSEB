class DateAndTime {
  DateTime now = DateTime.now();
  String date() {
    String ans = now.toString();

    return now.toString().substring(0, 10);
  }

  String time() {
    return now.toString().substring(11, 16);
  }
}
