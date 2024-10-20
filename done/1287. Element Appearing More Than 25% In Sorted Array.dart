class Solution {
  int findSpecialInteger(List<int> arr) {
    int ans = arr[0];
    int currentNumber = arr[0];
    int temp1 = 0, temp2 = 0;
    for (var i = 0; i < arr.length; i++) {
      if (currentNumber == arr[i]) {
        temp1++;
      } else {
        if (temp1 > temp2) {
          temp2 = temp1;
          ans = currentNumber;
        }
        temp1 = 1;
        currentNumber = arr[i];
      }
    }
    return ans;
  }
}
