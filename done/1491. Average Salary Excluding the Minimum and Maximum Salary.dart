class Solution {
  double average(List<int> salary) {
    salary.sort();
    int asn = 0;
    for (var i = 1; i < salary.length - 1; i++) {
      asn += salary[i];
    }
    return asn / (salary.length - 2);
  }
}
