class KthLargest {
  List<int> _sortedStream = [];
  int _length = 0;
  KthLargest(int k, List<int> nums) {
    _length = k;
    nums.sort();
    if (nums.length >= k) {
      _sortedStream = nums.sublist(nums.length - _length);
    } else {
      _sortedStream = nums;
    }
  }

  int add(int val) {
    _insertSorted(_sortedStream, val);
    if (_sortedStream.length > _length) {
      _sortedStream.removeAt(0);
    }
    return _sortedStream.first;
  }

  void _insertSorted(List<int> list, int val) {
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (list[mid] == val) {
        left = mid + 1;
      } else if (list[mid] < val) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    list.insert(left, val);
  }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * KthLargest obj = KthLargest(k, nums);
 * int param1 = obj.add(val);
 */