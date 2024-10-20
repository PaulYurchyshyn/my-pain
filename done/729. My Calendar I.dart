class MyCalendar {
  List<List<int>> _booked = [];
  MyCalendar() {}

  bool book(int start, int end) {
    for (var e in _booked) {
      int max_start = _max(start, e[0]);
      int min_end = _min(end, e[1]);
      if (max_start <= min_end) {
        return false;
      }
    }
    _booked.add([start, end]);
    return true;
  }

  int _max(int a, int b) => a > b ? a : b;
  int _min(int a, int b) => a > b ? b : a;
}

/**
 * Your MyCalendar object will be instantiated and called as such:
 * MyCalendar obj = MyCalendar();
 * bool param1 = obj.book(start,end);
 */