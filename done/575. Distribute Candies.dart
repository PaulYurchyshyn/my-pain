class Solution {
  int distributeCandies(List<int> candyType) {
    int canEat = candyType.length ~/ 2;
    int typesOfCandies = candyType.toSet().length;
    if (typesOfCandies > canEat) {
      return canEat;
    } else {
      return typesOfCandies;
    }
  }
}
