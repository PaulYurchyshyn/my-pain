class Solution {
  int lastStoneWeight(List<int> stones) {
    while (stones.length > 2) {
      stones.sort((b, a) => a.compareTo(b));
      if (stones[0] != stones[1]) {
        if (stones[0] > stones[1]) {
          int temp = stones[0] - stones[1];
          stones[0] = temp;
          stones.removeAt(1);
        } else {
          int temp = stones[1] - stones[0];
          stones[1] = temp;
          stones.removeAt(0);
        }
      } else {
        stones.removeAt(1);
        stones.removeAt(0);
      }
    }
    if (stones.length == 2) {
      if (stones[0] >= stones[1]) {
        return stones[0] - stones[1];
      }
      if (stones[1] > stones[0]) {
        return stones[1] - stones[0];
      }
    }
    return stones[0];
  }
}
