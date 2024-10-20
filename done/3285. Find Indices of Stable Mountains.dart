class Solution {
  List<int> stableMountains(List<int> height, int threshold) {
    List<int> ans = [];
    for (var i = 1; i < height.length; i++) {
      if (height[i - 1] >= threshold && height[i] >= threshold) {
        ans.add(i);
      }
    }
    return ans;
  }
}
