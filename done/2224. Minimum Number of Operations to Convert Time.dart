class Solution {
  int convertTime(String current, String correct) {
    List<int> _timeToList(String time) {
      List<int> ans = [];
      for (var e in time.split(':')) {
        ans.add(int.parse(e));
      }
      return ans;
    }

    if (current == correct) return 0;

    List<int> currenTime = _timeToList(current);
    List<int> correctTime = _timeToList(correct);
    int ans = 0;
    int differenceInMinutes = (correctTime[0] - currenTime[0]) * 60;
    if (currenTime[1] > correctTime[1]) {
      differenceInMinutes -= currenTime[1] - correctTime[1];
    } else {
      differenceInMinutes += correctTime[1] - currenTime[1];
    }
    int temp = differenceInMinutes ~/ 60;
    if (temp > 0) {
      ans += temp;
      differenceInMinutes -= 60 * temp;
    }
    temp = differenceInMinutes ~/ 15;
    if (temp > 0) {
      ans += temp;
      differenceInMinutes -= 15 * temp;
    }
    temp = differenceInMinutes ~/ 5;
    if (temp > 0) {
      ans += temp;
      differenceInMinutes -= 5 * temp;
    }
    temp = differenceInMinutes;
    if (temp > 0) {
      ans += temp;
      differenceInMinutes -= temp;
    }

    return ans;
  }
}
//1 5 15 60 min
//00:00 23:59