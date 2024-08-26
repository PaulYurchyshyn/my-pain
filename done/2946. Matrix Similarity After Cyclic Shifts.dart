class Solution {
  bool areSimilar(List<List<int>> mat, int k) {
    List<int> _leftShift(List<int> arr) {
      List<int> ans = arr.sublist(1);
      ans.add(arr.first);
      return ans;
    }

    List<int> _rightShift(List<int> arr) {
      List<int> ans = [arr.last];
      ans.addAll(arr.sublist(0, arr.length - 1));
      return ans;
    }

    String _matToCode(List<List<int>> mat) {
      String ans = '';
      for (var i = 0; i < mat.length; i++) {
        ans += mat[i].join();
      }
      return ans;
    }

    String beforeShifting = _matToCode(mat);
    for (var j = 0; j < mat.length; j++) {
      for (var i = 0; i < k; i++) {
        if (j % 2 == 0) {
          print(mat[j]);
          mat[j] = _leftShift(mat[j]);
          print(mat[j]);
        } else {
          print(mat[j]);
          mat[j] = _rightShift(mat[j]);
          print(mat[j]);
        }
      }
    }
    String afterShifting = _matToCode(mat);

    return afterShifting == beforeShifting;
  }
}
