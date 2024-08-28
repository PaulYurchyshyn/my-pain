class Solution {
  List<int> sortArrayByParityII(List<int> nums) {
    List<int> odd = [];
    List<int> even = [];
    for (var e in nums) {
      if (e % 2 == 0) {
        even.add(e);
      } else {
        odd.add(e);
      }
    }
    List<int> ans = [];
    for (var i = 0; i < odd.length; i++) {
      ans.addAll([even[i], odd[i]]);
    }
    return ans;
  }
}
