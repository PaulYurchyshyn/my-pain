class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int ans = 0;
    do {
      int temp = (height[left] > height[right] ? height[right] : height[left]) *
          (right - left);
      if (temp > ans) {
        ans = temp;
      }
      if (height[left] > height[right]) {
        right--;
      } else {
        left++;
      }
    } while (left < right);
    return ans;
  }
}
