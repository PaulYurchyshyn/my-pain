class Solution {
  int clumsy(int n) {
    if (n <= 2) {
      return n;
    }
    List<int> parts = [];
    bool step1 = true, step2 = false, step3 = false, step4 = false;
    int temp = 0;
    for (var i = n; i > 0; i--) {
      if (step1) {
        temp = i;
        step2 = true;
        step1 = false;
        continue;
      }
      if (step2) {
        temp *= i;
        step3 = true;
        step2 = false;
        continue;
      }
      if (step3) {
        temp ~/= i;
        step4 = true;
        step3 = false;
        parts.add(temp);
        temp = 0;
        continue;
      }
      if (step4) {
        step1 = true;
        step4 = false;
        parts.add(i);
        continue;
      }
    }
    if (parts.last != temp) {
      parts.add(temp);
    }
    int ans = parts.first;
    bool change = true;
    for (var i = 1; i < parts.length; i++) {
      if (change) {
        ans += parts[i];
        change = !change;
      } else {
        ans -= parts[i];
        change = !change;
      }
    }
    return ans;
  }
}
