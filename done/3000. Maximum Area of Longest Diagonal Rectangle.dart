import 'dart:math';

class Solution {
  int areaOfMaxDiagonal(List<List<int>> dimensions) {
    double diagonal;
    double maximumdiagonal = 0;
    int pos = 0, maximumarea = 0, area;
    for (var i = 0; i < dimensions.length; i++) {
      diagonal = sqrt(pow(dimensions[i][0], 2) + pow(dimensions[i][1], 2));
      area = (dimensions[i][0] * dimensions[i][1]);
      if (diagonal >= maximumdiagonal) {
        if (diagonal > maximumdiagonal) {
          maximumdiagonal = diagonal;
          maximumarea = area;
          pos = i;
          continue;
        }
        if (area > maximumarea) {
          maximumdiagonal = diagonal;
          maximumarea = area;
          pos = i;
        }
      }
    }
    return dimensions[pos][0] * dimensions[pos][1];
  }
}
