class Solution {
  String dayOfTheWeek(int day, int month, int year) {
    List<String> weekdays = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];
    return weekdays.elementAt(DateTime.utc(year, month, day).weekday - 1);
  }
}
