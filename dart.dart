import 'done/260. Single Number III.dart';

void main() {
  final stopwatch = Stopwatch()..start();
  print(Solution().singleNumber([1, 2, 1, 3, 2, 5]));

  print('doSomething() executed in ${stopwatch.elapsed}');

/*  dynamic f(dynamic a, Type c) {
    switch (c) {
      case int:
        return int.tryParse(a);
      case String:
        return a.toString();
      default:
        print('Type not on the list');
    }
  }

  String a = f(6, String);
  print(a);
  print(a.runtimeType);*/
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
/*
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(
        0); // Create a dummy node to serve as the head of the result list
    ListNode current = dummy; // Initialize a pointer to build the result list
    int carry = 0; // Initialize the carry to 0

    while (l1 != null || l2 != null) {
      // Traverse both lists
      int x = (l1 != null)
          ? l1!.val
          : 0; // Get the value of the current node in l1, or 0 if l1 is null
      int y = (l2 != null)
          ? l2!.val
          : 0; // Get the value of the current node in l2, or 0 if l2 is null
      int sum = carry +
          x +
          y; // Calculate the sum of the current values and the carry
      carry = sum ~/ 10; // Update the carry
      current.next = ListNode(sum %
          10); // Create a new node with the digit value and link it to the result list
      current = current.next!; // Move to the next node in the result list

      if (l1 != null) l1 = l1.next; // Move to the next node in l1
      if (l2 != null) l2 = l2.next; // Move to the next node in l2
    }

    if (carry > 0) {
      // If there is a remaining carry, create a new node for it
      current.next = ListNode(carry);
    }

    return dummy.next; // Return the head of the result list
  }

  int mostFrequent(List<int> nums, int key) {
    Map<int, int> results = {};
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == key) {
        if (results.containsKey(nums[i + 1])) {
          int? temp = results[nums[i + 1]];
          temp = temp! + 1;
          results[nums[i + 1]] = temp;
        } else {
          results[nums[i + 1]] = 1;
        }
      }
    }
    int pos = 0;
    int max = -1;
    for (var i = 0; i < results.values.toList().length; i++) {
      if (results.values.toList()[i] > max) {
        pos = i;
        max = results.values.toList()[i];
      }
    }
    return results.keys.toList()[pos];
  }

  int minimumSumI(int num) {
    List<String> rightShift(List<String> nums) {
      List<String> ans = [];
      ans.add(nums.last);
      ans.addAll(nums.sublist(0, nums.length - 1));
      return ans;
    }

    List<String> nums = [];
    for (var e in num.toString().split('')) {
      if (e != '0') {
        nums.add(e);
      }
    }
    if (nums.length == 1) return int.parse(nums[0]);

    int i = 0;
    int ans = 200;
    while (i < nums.length + 2) {
      String num1 = '';
      String num2 = '';
      nums = rightShift(nums);
      for (var j = 0; j < nums.length; j++) {
        if (j < nums.length ~/ 2) {
          num1 += nums[j];
        } else {
          num2 += nums[j];
        }
      }
      int temp1 = int.parse(num1) + int.parse(num2);
      num1 = num1.split('').reversed.join('');
      int temp2 = int.parse(num1) + int.parse(num2);
      num2 = num2.split('').reversed.join('');
      int temp3 = int.parse(num1) + int.parse(num2);
      if (ans > temp1 || ans > temp2 || ans > temp3) {
        if (ans > temp1) ans = temp1;
        if (ans > temp2) ans = temp2;
        if (ans > temp3) ans = temp3;
      }
      i++;
    }
    return ans;
  }

  int maximumUnits(List<List<int>> boxTypes, int truckSize) {
    int ans = 0;
    while (truckSize > 0 && boxTypes.isNotEmpty) {
      int bigestBox = 0;
      int pos = 0;
      for (var i = 0; i < boxTypes.length; i++) {
        if (boxTypes[i][1] > bigestBox) {
          bigestBox = boxTypes[i][1];
          pos = i;
        }
      }
      while (boxTypes[pos][0] > 0 && truckSize > 0) {
        ans += boxTypes[pos][1];
        boxTypes[pos][0]--;
        truckSize--;
      }
      boxTypes.removeAt(pos);
    }
    return ans;
  }

  int minimumRightShifts(List<int> nums) {
    bool isSorted(List<int> nums) {
      for (var i = 0; i < nums.length - 1; i++) {
        if (nums[i] > nums[i + 1]) {
          return false;
        }
      }
      return true;
    }

    List<int> rightShift(List<int> nums) {
      List<int> ans = [];
      ans.add(nums.last);
      ans.addAll(nums.sublist(0, nums.length - 1));
      return ans;
    }

    int ans = 0;
    while (!isSorted(nums) && ans < nums.length + 2) {
      nums = rightShift(nums);
      ans++;
    }

    return ans > nums.length ? -1 : ans;
  }

  int distanceTraveled(int mainTank, int additionalTank) {
    int ans = 0;
    while (mainTank >= 0) {
      if (mainTank >= 5 && additionalTank > 0) {
        ans += 50;
        additionalTank--;
        mainTank -= 4;
      } else {
        ans += mainTank * 10;
        mainTank -= mainTank;
      }
    }
    return ans;
  }

  int countWords(List<String> words1, List<String> words2) {
    int ans = 0;
    for (var e in words1) {
      if (words2.contains(e)) {
        int temp1 = 0;
        for (var w in words1) {
          if (e == w) {
            temp1++;
          }
        }
        int temp2 = 0;
        for (var w in words2) {
          if (e == w) {
            temp2++;
          }
        }
        if (temp1 == 1 && temp2 == 1) {
          ans++;
        }
      }
    }
    return ans;
  }

  bool checkString(String s) {
    for (var i = 0; i < s.length - 1; i++) {
      if (s[i].codeUnits[0] > s[i + 1].codeUnits[0]) {
        return false;
      }
    }
    return true;
  }

  List<int> decrypt(List<int> code, int k) {
    List<int> ans = [];
    int positiveK(List<int> code, int k, int pos) {
      int i = 0;
      int ans = 0;
      while (i < k) {
        pos++;
        if (pos >= code.length) {
          pos = 0;
        }
        ans += code[pos];
        i++;
      }
      return ans;
    }

    int negativeK(List<int> code, int k, int pos) {
      int i = 0;
      int ans = 0;
      while (i < -k) {
        pos--;
        if (pos < 0) {
          pos = code.length - 1;
        }
        ans += code[pos];
        i++;
      }
      return ans;
    }

    if (k > 0) {
      for (var i = 0; i < code.length; i++) {
        ans.add(positiveK(code, k, i));
      }
    } else if (k < 0) {
      for (var i = 0; i < code.length; i++) {
        ans.add(negativeK(code, k, i));
      }
    } else {
      for (var i = 0; i < code.length; i++) {
        ans.add(0);
      }
    }
    return ans;
  }

  int minimumSubarrayLength(List<int> nums, int k) {
    int size = 50;
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length + 1; j++) {
        List<int> tempArray = nums.sublist(i, j);
        int temp = 0;
        for (var e in tempArray) {
          temp |= e;
        }
        if (temp > k && size >= tempArray.length) {
          size = tempArray.length;
        }
      }
    }
    return size == 50 ? -1 : size;
  }

  String slowestKey(List<int> releaseTimes, String keysPressed) {
    int releaseTime = releaseTimes[0];
    String key = keysPressed[0];
    for (var i = 1; i < releaseTimes.length; i++) {
      int temp = releaseTimes[i] - releaseTimes[i - 1];
      if (temp >= releaseTime) {
        if (temp > releaseTime) {
          releaseTime = releaseTimes[i] - releaseTimes[i - 1];
          key = keysPressed[i];
          continue;
        } else if (keysPressed[i].codeUnits[0] > key[0].codeUnits[0]) {
          key = keysPressed[i];
          continue;
        }
      }
    }
    return key;
  }

  int minimumSum(List<int> nums) {
    int ans = 200;
    for (var i = 0; i < nums.length - 2; i++) {
      for (var j = i + 1; j < nums.length - 1; j++) {
        for (var k = j + 1; k < nums.length; k++) {
          int temp = nums[i] + nums[j] + nums[k];
          if (nums[i] < nums[j] && nums[k] < nums[j] && ans > temp) {
            ans = temp;
          }
        }
      }
    }
    return ans >= 200 ? -1 : ans;
  }

  int maximumStrongPairXor(List<int> nums) {
    int abs(int num) {
      return num > 0 ? num : -1 * num;
    }

    int min(int a, int b) {
      return a > b ? b : a;
    }

    int ans = -1;
    for (var i = 0; i < nums.length; i++) {
      for (var j = 0; j < nums.length; j++) {
        if (abs(nums[i] - nums[j]) <= min(nums[i], nums[j])) {
          int temp = nums[i] ^ nums[j];
          if (temp > ans) {
            ans = temp;
          }
        }
      }
    }

    return ans;
  }

  int missingInteger(List<int> nums) {
    int ans = nums[0];
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] + 1 == nums[i + 1])
        ans += nums[i + 1];
      else
        break;
    }
    while (nums.contains(ans)) {
      ans++;
    }
    return ans;
  }

  bool isValid(String word) {
    if (word.length < 3) return false;
    word = word.toLowerCase();
    bool containNumber = false, containVowel = false, containConsonant = false;
    List<String> sWord = word.split('');
    List<String> vowelLetters = ['a', 'e', 'i', 'o', 'u'];
    for (var e in sWord) {
      if (containNumber && containVowel && containConsonant) {
        return true;
      }
      int symbolCode = e.codeUnits[0];
      if (symbolCode >= 48 && symbolCode <= 57) {
        containNumber = true;
        continue;
      }
      if (symbolCode >= 97 && symbolCode <= 122) {
        if (vowelLetters.contains(e)) {
          containVowel = true;
        } else {
          containConsonant = true;
        }
        continue;
      } else {
        return false;
      }
    }
    if (containVowel && containConsonant) {
      return true;
    }
    return false;
  }

  int longestMonotonicSubarray(List<int> nums) {
    int ans = 1;
    int tempd = 1;
    int tempi = 1;
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        tempd++;
      } else {
        if (tempd > ans) ans = tempd;
        tempd = 1;
      }
      if (nums[i] < nums[i + 1]) {
        tempi++;
      } else {
        if (tempi > ans) ans = tempi;
        tempi = 1;
      }
    }
    if (tempi > ans || tempd > ans) {
      ans = tempi >= tempd ? tempi : tempd;
    }

    return ans;
  }

  int maximumTripletValue(List<int> nums) {
    int ans = 0;
    for (var i = 0; i < nums.length - 2; i++) {
      for (var j = i + 1; j < nums.length - 1; j++) {
        for (var k = j + 1; k < nums.length; k++) {
          int temp = (nums[i] - nums[j]) * nums[k];
          if (temp > ans) {
            ans = temp;
          }
        }
      }
    }
    return ans;
  }

  int findMinimumOperations(String s1, String s2, String s3) {
    bool equalStrings(String s1, String s2, String s3) {
      if (s1 == s2 && s2 == s3) {
        return true;
      } else {
        return false;
      }
    }

    if (s1[0] != s2[0] || s2[0] != s3[0] || s3[0] != s1[0]) {
      return -1;
    }

    int ans = 0;
    while (!equalStrings(s1, s2, s3)) {
      if (s1.length >= s2.length && s1.length >= s3.length) {
        s1 = s1.replaceRange(s1.length - 1, s1.length, ' ').trim();
        ans++;
      }
      if (equalStrings(s1, s2, s3)) break;
      if (s2.length >= s1.length && s2.length >= s3.length) {
        s2 = s2.replaceRange(s2.length - 1, s2.length, ' ').trim();
        ans++;
      }
      if (equalStrings(s1, s2, s3)) break;
      if (s3.length >= s1.length && s3.length >= s2.length) {
        s3 = s3.replaceRange(s3.length - 1, s3.length, ' ').trim();
        ans++;
      }
    }

    return ans;
  }

  int finalPositionOfSnake(int n, List<String> commands) {
    List<List<int>> gameField = [];
    int m = 0;
    for (var i = 0; i < n; i++) {
      List<int> row = [];
      for (var j = 0; j < n; j++) {
        row.add(m++);
      }
      gameField.add(row);
    }

    List<int> position = [0, 0];
    for (var e in commands) {
      switch (e) {
        case 'UP':
          position[0]--;
          break;
        case 'DOWN':
          position[0]++;
          break;
        case 'RIGHT':
          position[1]++;
          break;
        case 'LEFT':
          position[1]--;
          break;
      }
      if (position[0] < 0) position[0] = n - 1;
      if (position[0] >= n) position[0] = 0;
      if (position[1] < 0) position[1] = n - 1;
      if (position[1] >= n) position[1] = 0;
    }

    return gameField[position[0]][position[1]];
  }

  int countBeautifulPairs(List<int> nums) {
    int gcd(int num1, int num2) {
      if (num1 > num2) {
        for (var i = num2; i > 0; i--) {
          if (num2 % i == 0 && num1 % i == 0) {
            return i;
          }
        }
      } else {
        for (var i = num1; i > 0; i--) {
          if (num2 % i == 0 && num1 % i == 0) {
            return i;
          }
        }
      }
      return 0;
    }

    Set<List<int>> ans = {};

    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        int n1 = int.parse(nums[i].toString()[0]), n2 = nums[j] % 10;
        if (gcd(n1, n2) == 1) {
          ans.add([n1, n2]);
        }
      }
    }

    print(ans);
    return ans.length;
  }

  String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
      return '';
    }
    if (str1 == str2) {
      return str1;
    }
    String ans = '';
    if (str1.length > str2.length) {
      for (var i = str1.length ~/ 2; i >= 0; i--) {
        ans = str1.substring(0, i + 1);
        if (str2.length % ans.length == 0 && str1.length % ans.length == 0) {
          String temp = str2.substring(0, ans.length);
          if (ans == temp) {
            return ans;
          }
        }
      }
    } else {
      for (var i = str2.length ~/ 2; i >= 0; i--) {
        ans = str2.substring(0, i + 1);
        if (str2.length % ans.length == 0 && str1.length % ans.length == 0) {
          String temp = str1.substring(0, ans.length);
          if (ans == temp) {
            return ans;
          }
        }
      }
    }
    return ans;
  }

  int largestSumAfterKNegations(List<int> nums, int k) {
    int sum(List<int> list) {
      int ans = 0;
      for (var e in list) {
        ans += e;
      }
      return ans;
    }

    int minNumberIndex(List<int> list) {
      int ans = 0;
      int temp = list[0];
      for (var i = 0; i < list.length; i++) {
        if (temp > list[i]) {
          ans = i;
          temp = list[i];
        }
      }
      return ans;
    }

    for (var i = 0; i < k; i++) {
      int temp = minNumberIndex(nums);
      nums[temp] = -nums[temp];
    }

    int ans = sum(nums);

    return ans;
  }

  List<String> divideString(String s, int k, String fill) {
    List<String> ans = [];
    int stop = s.length ~/ k;
    if (s.length % k != 0) {
      stop++;
    }
    int m = 0;
    for (var i = 0; i < stop; i++) {
      String t = '';
      for (var j = 0; j < k; j++) {
        try {
          t += s[m];
        } catch (e) {
          t += fill;
        }
        m++;
      }
      ans.add(t);
    }
    return ans;
  }

  /*
    SELECT Visits.customer_id, count(*) as count_no_trans
    FROM Visits
    FULL JOIN Transactions ON Transactions.visit_id = Visits.visit_id
    WHERE Transactions.transaction_id IS NULL
    GROUP BY customer_id;
  */
  /*
    SELECT EmployeeUNI.unique_id, Employees.name
    FROM Employees
    LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;
  */

  int myAtoi(String s) {
    s = s.trim();
    if (s.isEmpty) {
      return 0;
    }
    String ans = '';
    late int j;
    if (s[0] == '-' || s[0] == '+') {
      if (s[0] == '-') {
        ans = '-';
        j = 1;
      } else {
        ans = '';
        j = 1;
      }
    } else {
      ans = '';
      j = 0;
    }
    bool firstZeros = true;
    for (var i = j; i < s.length; i++) {
      if (firstZeros && s[i] == '0') {
        continue;
      } else {
        firstZeros = false;
      }
      if (s[i].codeUnits[0] >= 48 && s[i].codeUnits[0] <= 57) {
        ans += s[i];
        if (ans.length > 15) {
          break;
        }
      } else {
        break;
      }
    }
    int? temp = int.tryParse(ans);
    late int res;
    if (temp != null) {
      if (temp >= -2147483648 && temp <= 2147483647) {
        res = temp;
      } else {
        if (temp <= -2147483648) {
          res = -2147483648;
        } else {
          res = 2147483647;
        }
      }
    } else {
      res = 0;
    }
    return res;
  }
  /*
    SELECT tweet_id
    FROM Tweets
    WHERE length(content) > 15;
  */
  /*
    SELECT product_id
    FROM Products
    WHERE low_fats = 'Y' AND recyclable = 'Y';
  */
  /*
    SELECT name
    FROM Customer
    WHERE referee_id != 2 OR referee_id IS NULL;
  */
  /*
    SELECT DISTINCT viewer_id as id
    FROM Views
    WHERE author_id = viewer_id;
  */

  bool isThree(int n) {
    int ans = 2;
    for (var i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        ans++;
      }
      if (ans > 3) {
        break;
      }
    }
    if (ans == 3) {
      return true;
    } else {
      return false;
    }
  }

  int minLength(String s) {
    int i = 0;
    List<String> list = s.split('');
    while (true) {
      if (i >= list.length - 1) {
        break;
      }
      if ((list[i] == 'A' && list[i + 1] == 'B') ||
          (list[i] == 'C' && list[i + 1] == 'D')) {
        list.removeAt(i + 1);
        list.removeAt(i);
        i = 0;
        continue;
      }
      i++;
    }
    return list.length;
  }

  bool canAliceWin(List<int> nums) {
    int single = 0;
    int double = 0;
    for (var e in nums) {
      if (e > 9) {
        double += e;
      } else {
        single += e;
      }
    }
    if (single > double || double > single) {
      return true;
    } else {
      return false;
    }
  }

  int smallestEvenMultiple(int n) {
    return n % 2 == 0 ? n : n * 2;
  }

  int maximumNumberOfStringPairs(List<String> words) {
    int ans = 0;

    String swap(String s) {
      return s[1] + s[0];
    }

    for (var i = 0; i < words.length; i++) {
      for (var j = i + 1; j < words.length; j++) {
        if (swap(words[i]) == words[j]) {
          ans++;
          words.removeAt(j);
          words.removeAt(i);
          i = -1;
          break;
        }
      }
    }
    return ans;
  }

  List<int> lastVisitedIntegers(List<int> nums) {
    List<int> seen = [], ans = [];
    int k = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == -1) {
        try {
          ans.add(seen[k]);
        } catch (e) {
          ans.add(-1);
        }
        k++;
      } else {
        seen.insert(0, nums[i]);
        k = 0;
      }
    }
    return ans;
  }

  int semiOrderedPermutation(List<int> nums) {
    int p = 0, swaps = 0;

    while (nums.first != 1) {
      if (nums[p] == 1) {
        nums.replaceRange(p, p + 1, [nums[p - 1]]);
        nums.replaceRange(p - 1, p, [1]);
        swaps++;
        p = 0;
        continue;
      }
      p++;
    }
    while (nums.last != nums.length) {
      if (nums[p] == nums.length) {
        nums.replaceRange(p, p + 1, [nums[p + 1]]);
        nums.replaceRange(p + 1, p + 2, [nums.length]);
        swaps++;
        p = 0;
        continue;
      }
      p++;
    }
    return swaps;
  }

  List<int> leftRightDifference(List<int> nums) {
    List<int> leftSum = [];
    List<int> rightSum = [];
    int left = 0;
    int right = 0;

    int i = 0;
    do {
      leftSum.add(left);
      rightSum.insert(0, right);
      left += nums[i];
      right += nums[nums.length - 1 - i];
      i++;
    } while (i < nums.length);

    List<int> diffArray = [];
    int diff = 0;
    for (var i = 0; i < leftSum.length; i++) {
      diff = leftSum[i] - rightSum[i];
      if (diff < 0) {
        diffArray.add(-diff);
      } else {
        diffArray.add(diff);
      }
    }

    return diffArray;
  }

  String losingPlayer(int x, int y) {
    bool winner = false;
    while (x >= 1 && y >= 4) {
      x--;
      y -= 4;
      winner = !winner;
    }
    if (winner) {
      return 'Alice';
    } else {
      return 'Bob';
    }
  }

  int timeRequiredToBuy(List<int> tickets, int k) {
    int result = 0;
    while1:
    while (tickets[k] > 0) {
      for (var i = 0; i < tickets.length; i++) {
        if (tickets[k] <= 0) {
          break while1;
        }
        if (tickets[i] == 0) {
          if (i < k) {
            k--;
          }
          tickets.removeAt(i);
          i--;
          continue;
        }
        result++;
        tickets[i]--;
      }
    }
    return result;
  }

  int timeRequiredToBuys(List<int> tickets, int k) {
    int result = tickets[k] * tickets.length;
    int temp = tickets[k];
    for (var i = 0; i < tickets.length; i++) {
      tickets[i] -= temp;
      if (tickets[i] < 0) {
        result += tickets[i];
      }
    }
    return result;
  }

  int minChanges(int n, int k) {
    String bin(int d) {
      String b = '';
      while (d > 0) {
        int t = d % 2;
        b = '$t' + b;
        d = d ~/ 2;
      }
      return b;
    }

    String equalLength(String s, int n) {
      while (s.length < n) {
        s = '0' + s;
      }
      return s;
    }

    String nBin = bin(n);
    String kBin = bin(k);
    if (nBin.length > kBin.length) {
      kBin = equalLength(kBin, nBin.length);
    }
    if (nBin.length < kBin.length) {
      nBin = equalLength(nBin, kBin.length);
    }
    int result = 0;
    for (var i = 0; i < nBin.length; i++) {
      if (nBin[i] != kBin[i] && nBin[i] == '1') {
        nBin = nBin.replaceRange(i, i + 1, '0');
        result++;
      }
    }
    if (nBin != kBin) {
      return -1;
    } else {
      return result;
    }
  }

  int countKeyChanges(String s) {
    String temp = s.toLowerCase();
    int result = 0;
    for (var i = 0; i < temp.length - 1; i++) {
      if (temp[i] != temp[i + 1]) {
        result++;
      }
    }
    return result;
  }

  int similarPairs(List<String> words) {
    int result = 0;
    for (var i = 0; i < words.length; i++) {
      Set<String> word1 = words[i].split('').toSet();
      for (var j = i + 1; j < words.length; j++) {
        Set<String> word2 = words[j].split('').toSet();
        if (word1.length == word2.length) {
          Set<String> commonLetters = word1.intersection(word2);
          if (commonLetters.length == word1.length &&
              commonLetters.length == word2.length) {
            result++;
          }
        }
      }
    }
    return result;
  }

  List<List<int>> mergeSimilarItems(
      List<List<int>> items1, List<List<int>> items2) {
    List<List<int>> mergedItems = [];
    for (var i = 0; i < items1.length;) {
      for (var j = 0; j < items2.length; j++) {
        if (items1[i][0] == items2[j][0]) {
          mergedItems.add([
            items1[i][0],
            items1[i][1] + items2[j][1],
          ]);
          items2.removeAt(j);
          items1.removeAt(i);
          i--;
          break;
        }
      }
      i++;
    }
    if (items1.isNotEmpty) {
      mergedItems.addAll(items1);
    }
    if (items2.isNotEmpty) {
      mergedItems.addAll(items2);
    }
    for (var i = 0; i < mergedItems.length - 1; i++) {
      if (mergedItems[i][0] > mergedItems[i + 1][0]) {
        List<List<int>> temp1 = [mergedItems[i]];
        List<List<int>> temp2 = [mergedItems[i + 1]];
        mergedItems.replaceRange(i, i + 1, temp2);
        mergedItems.replaceRange(i + 1, i + 2, temp1);
        i = -1;
      }
    }
    return mergedItems;
  }

  int findNonMinOrMax(List<int> nums) {
    nums.sort();
    if (nums.length <= 2) {
      return -1;
    } else {
      return nums[0];
    }
  }

  List<int> decode(List<int> encoded, int first) {
    List<int> decoded = [];
    decoded.add(first);
    int number = first ^ encoded[0];
    decoded.add(number);
    for (var i = 1; i < encoded.length; i++) {
      number = number ^ encoded[i];
      decoded.add(number);
    }
    return decoded;
  }

  int accountBalanceAfterPurchase(int purchaseAmount) {
    if (purchaseAmount <= 10) {
      return 90;
    }
    if (purchaseAmount % 10 >= 5) {
      return 100 - ((purchaseAmount ~/ 10) * 10 + 10);
    } else {
      return 100 - ((purchaseAmount ~/ 10) * 10);
    }
  }

  String digitSum(String s, int k) {
    String newS = '';
    while (s.length > k) {
      newS = '';
      for (var i = 0; i < s.length; i += k) {
        int temp = 0;
        int edge = 0;
        if ((s.length - i) ~/ k > 0) {
          edge = k;
        } else {
          edge = (s.length - i) % k;
        }
        for (var e in s.substring(i, i + edge).split('')) {
          temp += int.parse(e);
        }
        newS += '$temp';
      }
      s = newS;
    }
    return s;
  }

  String getSmallestString(String s) {
    for (var i = 0; i < s.length - 1; i++) {
      int fn = int.parse(s[i]);
      int sn = int.parse(s[i + 1]);
      if (fn > sn && sn % 2 == fn % 2) {
        return s.substring(0, i) + '$sn' + '$fn' + s.substring(i + 2, s.length);
      }
    }
    return s;
  }

  String largestGoodInteger(String n) {
    bool firstNumberFound = false;
    String result = '';
    int foundNumber = -1;
    for (var i = 0; i < n.length - 2; i++) {
      if (n[i] == n[i + 1] && n[i] == n[i + 2]) {
        if (!firstNumberFound ||
            int.parse(n.substring(i, i + 3)) >= foundNumber) {
          result = n.substring(i, i + 3);
          firstNumberFound = true;
          foundNumber = int.parse(n.substring(i, i + 3));
        }
      }
    }
    return result;
  }

  String frequencySort(String s) {
    List<int> numberList = [];
    List<String> letterList = [];
    for (var e in s.split('')) {
      if (letterList.contains(e)) {
        int i = letterList.indexWhere((element) => e == element);
        numberList[i]++;
      } else {
        letterList.add(e);
        numberList.add(1);
      }
    }
    List<int> sortedNumberList = List.of(numberList);
    sortedNumberList.sort((b, a) => a.compareTo(b));
    String rs = '';
    for (var e in sortedNumberList) {
      int i = numberList.indexWhere((n) => e == n);
      for (var j = 0; j < e; j++) {
        rs += letterList[i];
      }
      letterList.removeAt(i);
      numberList.removeAt(i);
    }
    return rs;
  }

  List<int> intersectionII(List<List<int>> nums) {
    if (nums.length < 2) {
      nums[0].sort();
      return nums[0];
    }
    List<int> result = [];
    for (var i = 0; i < nums[0].length; i++) {
      bool isContain = true;
      for (var j = 1; j < nums.length; j++) {
        if (!nums[j].contains(nums[0][i])) {
          isContain = false;
          break;
        }
      }
      if (isContain) result.add(nums[0][i]);
    }
    result.sort();
    return result;
  }

  int nearestValidPoint(int x, int y, List<List<int>> p) {
    int abs(int n) {
      if (n < 0) {
        return -1 * n;
      } else {
        return n;
      }
    }

    bool ft = true;
    int res = -1;
    for (var i = 0; i < p.length; i++) {
      if (p[i][0] == x || p[i][1] == y) {
        int temp = abs(x - p[i][0]) + abs(y - p[i][1]);
        if (res > temp || ft) {
          res = i;
          ft = false;
        }
      }
    }
    return res;
  }

  bool judgeCircle(String moves) {
    List<int> res = [0, 0];
    for (var e in moves.split('')) {
      switch (e) {
        case 'U':
          res[0]++;
        case 'D':
          res[0]--;
        case 'R':
          res[1]++;
        case 'L':
          res[1]--;
      }
    }
    return (res[0] == 0 && res[1] == 0);
  }

  List<List<int>> findDifferenceAnotherVariant(List<int> n1, List<int> n2) {
    for (var i = 0; i < n1.length; i++) {
      int temp = n1[i];
      if (n2.contains(temp)) {
        while (n1.contains(temp)) n1.remove(temp);
        while (n2.contains(temp)) n2.remove(temp);
        i--;
      }
    }
    return [n1.toSet().toList(), n2.toSet().toList()];
  }

  List<List<int>> findDifference(List<int> n1, List<int> n2) {
    return [
      n1.toSet().difference(n2.toSet()).toList(),
      n2.toSet().difference(n1.toSet()).toList()
    ];
  }

  int xorOperation(int n, int start) {
    int result = 0;
    for (var i = 0; i < n; i++) {
      result ^= start + 2 * i;
    }
    return result;
  }

  int minOperations(List<String> logs) {
    int result = 0;
    for (var e in logs) {
      switch (e) {
        case './':
          continue;
        case '../':
          if (result > 0) {
            result--;
          }
          continue;
        default:
          result++;
      }
    }
    return result;
  }

  int maxProduct(List<int> nums) {
    nums.sort();
    return ((nums[nums.length - 1] - 1) * (nums[nums.length - 2] - 1));
  }

  bool uniqueOccurrences(List<int> arr) {
    List<int> results = [];
    for (var e in arr.toSet()) {
      int temp = 0;
      while (arr.contains(e)) {
        arr.remove(e);
        temp++;
      }
      if (results.contains(temp)) {
        return false;
      } else {
        results.add(temp);
      }
    }
    return true;
  }

  String getEncryptedString(String s, int k) {
    String result = '';
    if (k >= s.length) {
      k = k % s.length;
    }
    for (var i = 0; i < s.length; i++) {
      if ((i + k) >= s.length) {
        result += s[-1 * (s.length - (i + k))];
      } else {
        result += s[i + k];
      }
    }
    return result;
  }


  //2621. Sleep
  /*/*
    * @param {number} millis
    * @return {Promise}
  */
  async function sleep(millis) {
    return new Promise(resolve => setTimeout(resolve, millis));
  }

  / 
    * let t = Date.now()
    * sleep(100).then(() => console.log(Date.now() - t)) // 100
    */

  //2703. Return Length of Arguments Passed (JS)
  /*/**
    * @param {...(null|boolean|number|string|Array|Object)} args
    * @return {number}
  */
    var argumentsLength = function(...args) {
      return args.length;
    };
  /**
    * argumentsLength(1, 2, 3); // 3
  */*/

  //183. Customers Who Never Order
  //SELECT name as Customers
  //FROM Customers
  //FULL JOIN Orders ON Orders.customerId = Customers.id
  //WHERE  Orders.customerId is null;

  //7. Reverse Integer


  // 9. Palindrome Number
  

  //10. Regular Expression Matching


  //13. Roman to Integer


  //14. Longest Common Prefix


  //15 3Sum Time Execution
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    List<String> ts = [];
    for (var i = 0; i < nums.length - 2; i++) {
      for (var j = i + 1; j < nums.length - 1; j++) {
        for (var k = j + 1; k < nums.length; k++) {
          if (nums[i] + nums[j] + nums[k] == 0) {
            List<int> tr = [nums[i], nums[j], nums[k]];
            tr.sort();
            if (!ts.contains(tr.join(''))) {
              ts.add(tr.join(''));
              result.add(tr);
            }
          }
        }
      }
    }
    return result;
  }

  //26. Remove Duplicates from Sorted Array


  //27. Remove Element


  //29.Divide Two Integers


  //35. Search Insert Position


  //50. Pow(x, n)


  //56. Merge Intervals


  //58. Lenght of Last Word


  //65. Valid Number


  //66. Plus one


  //67. Add Binary
  

  //69. Sqrt(x)
  int mySqrt(int x) {
    if (x == 0 || x == 1) {
      return x;
    }
    int i = 1, result = 1;
    while (result <= x) {
      i++;
      result = i * i;
    }
    return i - 1;
  }

  //75. Sort Colors
  //selection sort
  void sortColors(List<int> nums) {
    int n = nums.length;
    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < n; j++) {
        if (nums[j] < nums[minIndex]) {
          minIndex = j;
        }
      }
      int temp = nums[minIndex];
      nums[minIndex] = nums[i];
      nums[i] = temp;
    }
  }

  //80. Remove Duplicetes from Sorted Array
  int removeDuplicates2(List<int> nums) {
    List<int> result = [];
    int count = 0;
    int r = -1;
    for (var e in nums) {
      if (r != e) {
        count = 0;
      }
      if (count < 2) {
        result.add(e);
        count++;
        r = e;
      }
    }
    print(result);
    nums.replaceRange(0, result.length, result);
    return result.length;
  }

  //88. Merge Sorted Array
  void mergeII(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.replaceRange(m, nums1.length, nums2);
    nums1.sort();
  }

  //168. Excel Sheet Column Title
  String convertToTitle(int columnNumber) {
    String result = '';
    while (columnNumber > 0) {
      result = String.fromCharCode(columnNumber % 27 + 64) + result;
      columnNumber = columnNumber ~/ 27;
    }
    return result;
  }

  //191. Number of 1 Bits
  int hammingWeight(int n) {
    int rn = n;
    String binNum = '';
    while (rn > 0) {
      if (rn % 2 == 1) {
        binNum = '1' + binNum;
      } else {
        binNum = '2' + binNum;
      }
      rn = rn ~/ 2;
    }
    int y = 0;
    for (var i = 0; i < binNum.length; i++) {
      if (binNum[i] == '1') {
        y += 1;
      }
    }
    return y;
  }

  //136. Single Number
  int singleNumber(List<int> nums) {
    for (var e in nums.toList()) {
      int count = 0;
      for (var en in nums) {
        if (e == en) {
          count++;
        }
      }
      if (count == 1) {
        return e;
      }
    }
    return 0;
  }

  //137. Single Number II
  int singleNumberII(List<int> nums) {
    for (var e in nums) {
      int count = 0;
      for (var en in nums) {
        if (e == en) {
          count++;
        }
      }
      if (count == 1) {
        return e;
      }
    }
    return 0;
  }

  //151. Reverse Words in a String
  String reverseWords(String s) {
    List<String> slist = [];
    String result = '';
    for (var e in s.split(' ')) {
      if (' ' != e && '' != e) {
        slist.add(e);
      }
    }
    for (var i = slist.length - 1; i >= 0; i--) {
      if (i == 0) {
        result += slist[i];
      } else {
        result += slist[i];
        result += ' ';
      }
    }
    return result;
  }

  //169. Majority Element
  int majorityElement(List<int> nums) {
    int majorelement = 0;
    int i = 0, si = 0;
    for (var e in nums.toSet()) {
      for (var j = 0; j < nums.length; j++) {
        if (e == nums[j]) {
          i++;
        }
      }
      if (i > si) {
        si = i;
        majorelement = e;
      }
      i = 0;
    }
    return majorelement;
  }

  //217. Contains Duplicate
  bool containsDuplicate(List<int> nums) {
    nums.sort();
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }

  //219. Contains Duplicate II
  bool containsNearbyDuplicate(List<int> nums, int k) {
    if (k <= 0) {
      return false;
    }
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          return true;
        }
        if (j - i >= k) {
          break;
        }
      }
    }
    return false;
  }

  //231. Power of Two
  bool isPowerOfTwo(int n) {
    if (n < 0) return false;
    int x = 0;
    while (pow(2, x) < n) {
      x++;
    }
    if (pow(2, x) == n) {
      return true;
    } else {
      return false;
    }
  }

  //242. Valid Anagram
  bool isAnagram(String s, String t) {
    int ct, cs;
    String tcode = '';
    String scode = '';
    for (var i = 'a'.codeUnitAt(0); i <= 'z'.codeUnitAt(0); i++) {
      cs = 0;
      ct = 0;
      for (var j in s.split('')) {
        if (String.fromCharCode(i) == j.toString()) {
          cs++;
        }
      }
      scode += cs.toString();
      for (var j in t.split('')) {
        if (String.fromCharCode(i) == j.toString()) {
          ct++;
        }
      }
      tcode += ct.toString();
    }
    if (tcode == scode) {
      return true;
    } else {
      return false;
    }
  }

  //258. Add Digits
  int addDigits(int num) {
    List nums = num.toString().split('').toList();
    int result = 0;
    for (var element in nums) {
      result += int.parse(element);
    }
    if (result > 10) {
      result = addDigits(result);
    }
    return result;
  }

  //268. Missing Number
  int missingNumber(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      if (!nums.contains(i)) {
        return i;
      }
    }
    return nums.length;
  }

  //283. Move Zeros
  void moveZeroes(List<int> nums) {
    List<int> temp = [];
    int j = 0;
    for (var i = 0; i < nums.length; i++) {
      temp.add(0);
    }
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        temp[j] = nums[i];
        j++;
      }
    }
    for (var i = 0; i < nums.length; i++) {
      nums[i] = temp[i];
    }
  }

  //287. Find the Duplicate Number
  int findDuplicate(List<int> nums) {
    nums.sort();
    for (var i = 0; i < nums.length - 1; i++) {
      int m = nums[i], n = nums[i + 1];
      if (m == n) {
        return nums[i];
      }
    }
    return -1;
  }

  //326. Power of Three
  bool isPowerOfThree(int n) {
    if (n <= 0) {
      return false;
    }
    for (var i = 0; i < 51; i++) {
      if (n == pow(3, i)) return true;
      if (n < pow(3, i)) return false;
    }
    return false;
  }

  //338. Counting Bits
  List<int> countBits(int n) {
    List<int> result = [];
    for (var i = 0; i <= n; i++) {
      int n = i;
      int t_res = 0;
      while (n > 0) {
        t_res += n % 2;
        if (n % 2 == 1) {
          n = (n - 1) ~/ 2;
        } else {
          n ~/= 2;
        }
      }
      result.add(t_res);
    }
    return result;
  }

  //342. Power of Four
  bool isPowerOfFour(int n) {
    if (n < 0) {
      return false;
    }
    for (var i = 0; i < 2147483647; i++) {
      if (pow(4, i) == n) {
        return true;
      }
      if (pow(4, i) > n) {
        return false;
      }
    }
    return false;
  }

  //344. Reverse String
  void reverseString(List<String> s) {
    List<String> temp = [];
    for (var i = s.length - 1; i >= 0; i--) {
      temp.add(s[i]);
    }
    s.replaceRange(0, s.length - 1, temp);
  }

  //345. Reverse Vowels of a String
  String reverseVowels(String s) {
    String result = '';
    List<String> splitS = s.split('');
    List<String> rsplitS = [];
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    for (var i = splitS.length - 1; i >= 0; i--) {
      if (vowels.contains(splitS[i])) {
        rsplitS.add(splitS[i]);
      }
    }
    int j = 0;
    for (var i = 0; i < splitS.length; i++) {
      if (vowels.contains(splitS[i])) {
        result += rsplitS[j];
        j++;
      } else {
        result += splitS[i];
      }
    }
    return result;
  }

  //349. Intersection of Two Arrays
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var e in nums1.toSet()) {
      if (nums2.contains(e)) {
        result.add(e);
      }
    }
    return result;
  }

  //350. Intersection of Two Arrays II
  List<int> intersectII(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var e in nums2) {
      if (nums1.contains(e)) {
        result.add(e);
        nums1.remove(e);
      }
    }
    return result;
  }

  //367. Valid Perfect Square
  bool isPerfectSquare(int num) {
    int i = 1;
    while (i * i <= num) {
      if (i * i == num) {
        return true;
      }
      i++;
    }
    return false;
  }

  //389. Find the Difference
  String findTheDifference(String s, String t) {
    var result = t.split('');
    for (var i = 0; i < s.split('').length; i++) {
      result.remove(s.split('')[i]);
    }
    return result[0];
  }

  //392. Is Subsequence
  bool isSubsequence(String s, String t) {
    List<String> lists = s.split(''), listt = t.split('');
    int count = 0;
    for (var i = 0; i < listt.length; i++) {
      if (lists[count] == listt[i]) {
        count++;
      }
    }
    if (count == lists.length) {
      return true;
    } else {
      return false;
    }
  }

  //412. Fizz Buzz
  List<String> fizzBuzz(int n) {
    List<String> result = [];
    for (var i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        result.add('FizzBuzz');
      } else if (i % 3 == 0) {
        result.add('Fizz');
      } else if (i % 5 == 0) {
        result.add('Buzz');
      } else {
        result.add('$i');
      }
    }
    return result;
  }

  //415
  String addStrings(String num1, String num2) {
    List<String> ln2 = [];
    List<String> ln1 = [];
    String sum = '';
    for (var i = num1.length - 1; i >= 0; i--) {
      ln1.add(num1[i]);
    }
    for (var i = num2.length - 1; i >= 0; i--) {
      ln2.add(num2[i]);
    }
    int size = 0;
    if (ln1.length >= ln2.length) {
      size = ln2.length;
    } else {
      size = ln1.length;
    }
    bool nextPlusOne = false;
    for (var i = 0; i < size; i++) {
      int ts = 0;
      if (nextPlusOne) {
        ts = int.parse(ln1[i]) + int.parse(ln2[i]) + 1;
        nextPlusOne = false;
      } else {
        ts = int.parse(ln1[i]) + int.parse(ln2[i]);
      }
      if (ts >= 10) {
        ts = ts % 10;
        nextPlusOne = true;
      }
      sum = ts.toString() + sum;
    }
    bool N1OrN2 = false;
    if (ln1.length >= ln2.length) {
      N1OrN2 = true;
    }
    if (N1OrN2) {
      int ts = 0;
      for (var i = size; i < ln1.length; i++) {
        if (nextPlusOne) {
          ts = int.parse(ln1[i]) + 1;
          nextPlusOne = false;
        } else {
          ts = int.parse(ln1[i]);
        }
        if (ts >= 10) {
          ts = ts % 10;
          nextPlusOne = true;
        }
        sum = ts.toString() + sum;
      }
    } else {
      int ts = 0;
      for (var i = size; i < ln2.length; i++) {
        if (nextPlusOne) {
          ts = int.parse(ln2[i]) + 1;
          nextPlusOne = false;
        } else {
          ts = int.parse(ln2[i]);
        }
        if (ts >= 10) {
          ts = ts % 10;
          nextPlusOne = true;
        }
        sum = ts.toString() + sum;
      }
    }
    if (nextPlusOne) {
      sum = '1' + sum;
    }
    return sum;
  }

  //434. Number of Segments in a String
  int countSegments(String s) {
    List<String> t_res = s.split(' ');
    while (t_res.contains('')) {
      t_res.remove('');
    }
    return t_res.length;
  }

  //442.Find All Duplicates in an Array
  List<int> findDuplicates(List<int> nums) {
    List<int> result = [];
    nums.sort();
    if (nums.length <= 1) {
      return [];
    }
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        result.add(nums[i]);
      }
    }
    return result;
  }

  //448. Find All Numbers Disappeared in an Array
  List<int> findDisappearedNumbers(List<int> nums) {
    nums.sort();
    List<int> result = [];
    int j = 1;
    for (var e in nums) {
      if (j != e) {
        result.add(e);
      }
      j++;
    }
    return result;
  }

  //405. Convert a Number ot Hexdecimal
  String toHex(int num) {
    int tnum = num;
    if (tnum < 0) tnum = pow(2, 32).toInt() + tnum;
    Map<int, String> vocab = {
      0: '0',
      1: '1',
      2: '2',
      3: '3',
      4: '4',
      5: '5',
      6: '6',
      7: '7',
      8: '8',
      9: '9',
      10: 'a',
      11: 'b',
      12: 'c',
      13: 'd',
      14: 'e',
      15: 'f'
    };
    String result = '';
    while (tnum % 16 >= 0) {
      result = vocab[tnum % 16]! + result;
      tnum ~/= 16;
    }
    return result;
  }

  //414. Third Maximum Number
  int? thirdMax(List<int> nums) {
    nums.sort();
    if (nums.length < 3) return nums.last;
    Set<int> result = nums.toSet();
    int j = 0;
    for (var i = result.length - 1; i >= 0; i--) {
      j++;
      if (j == 3) {
        return result.elementAt(i);
      }
    }
  }

  //443. String Compression
  int compress(List<String> chars) {
    List<String> result = [];
    String char = chars[0];
    int m = 0;
    for (var e in chars) {
      if (char == e) {
        m++;
      }
      if (char != e) {
        if (m == 1) {
          result.add(char);
          char = e;
          m = 1;
        } else {
          result.add(char);
          char = e;
          for (var r in m.toString().split('')) {
            result.add(r);
          }
          m = 1;
        }
      }
    }
    if (m == 1) {
      result.add(char);
    } else {
      result.add(char);
      for (var r in m.toString().split('')) {
        result.add(r);
      }
    }
    chars.clear;
    chars.insertAll(0, result);
    return result.length;
  }

  //485. Max Consecutive Ones
  int findMaxConsecutiveOnes(List<int> nums) {
    int count = 0, fcount = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
      } else {
        if (count > fcount) {
          fcount = count;
        }
        count = 0;
      }
    }
    if (count > fcount) {
      fcount = count;
    }
    return fcount;
  }

  //496.Next Greater Element I
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var i = 0; i < nums1.length; i++) {
      bool pass = false;
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          pass = true;
        }
        if (pass && nums2[j] > nums1[i]) {
          result.add(nums2[j]);
          break;
        }
      }
      if (result.length != i + 1) {
        result.add(-1);
      }
    }
    return result;
  }

  //500. Keyboard Row
  List<String> findWords(List<String> words) {
    List<String> firstRow = ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'];
    List<String> secondRow = ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'];
    List<String> thirdRow = ['z', 'x', 'c', 'v', 'b', 'n', 'm'];
    List<String> result = [];
    int counter;
    for (String word in words) {
      List<String> sWord = word.toLowerCase().split('');
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < firstRow.length; i++) {
          if (firstRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < secondRow.length; i++) {
          if (secondRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < thirdRow.length; i++) {
          if (thirdRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
    }
    return result;
  }

  //504. Base 7
  String convertToBase7(int num) {
    String result = '';
    String mark = '';
    if (num < 0) {
      mark += '-';
      num *= -1;
    }
    while (num >= 7) {
      result += (num % 7).toString();
      num = num ~/ 7;
    }
    result += (num % 7).toString();
    result += mark;
    return result.split('').reversed.join('');
  }

  //507. Perfect Number
  bool checkPerfectNumber(int num) {
    int result = 0;
    for (var i = 1; i <= num; i++) {
      if (num % i == 0) {
        result += i;
        if (result == 2 * num) return true;
        if (num < result) return false;
      }
    }
    return false;
  }

  // 520. Detect Capital
  bool detectCapitalUse(String word) {
    List<int> check = [0, 0];
    List<String> splitedword = word.split('');
    for (var v = 0; v < splitedword.length; v++) {
      for (var i = 'a'.codeUnits[0]; i <= 'z'.codeUnits[0]; i++) {
        if (splitedword[v].codeUnits[0] == i) {
          check[1]++;
        }
      }
      for (var i = 'A'.codeUnits[0]; i <= 'Z'.codeUnits[0]; i++) {
        if (splitedword[v].codeUnits[0] == i) {
          check[0]++;
        }
      }
    }
    if (check[1] == splitedword.length ||
        check[0] == splitedword.length ||
        (check[1] == splitedword.length - 1 &&
            check[0] == 1 &&
            (splitedword[0].codeUnits[0] >= 'A'.codeUnits[0] &&
                splitedword[0].codeUnits[0] <= 'Z'.codeUnits[0]))) {
      return true;
    } else {
      return false;
    }
  }

  //557. Reverse Words in a String III
  String reverseWordsIII(String s) {
    List<String> result = [];
    for (var e in s.split(' ')) {
      String word = '';
      for (var i = e.length - 1; i >= 0; i--) {
        word += e[i];
      }
      result.add(word);
    }
    return result.join(' ');
  }

  //566. Reshape the Matrix
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    if (mat.length * mat[0].length != r * c) {
      return mat;
    }
    List<int> vec = [];
    for (var i = 0; i < mat.length; i++) {
      for (var j = 0; j < mat[0].length; j++) {
        vec.add(mat[i][j]);
      }
    }
    int m = 0;
    List<List<int>> res = [];
    for (var i = 0; i < r; i++) {
      List<int> tvec = [];
      for (var i = 0; i < c; i++) {
        tvec.add(vec[m++]);
      }
      res.add(tvec);
    }
    return res;
  }

  //648. Replace Words
  String replaceWords(List<String> dictionary, String sentence) {
    List<String> splitSentence = sentence.split(' ');
    String result = '';
    for (var i = 0; i < splitSentence.length; i++) {
      String word = splitSentence[i];
      for (var e in dictionary) {
        if (word.length >= e.length) {
          if (word.substring(0, e.length) == e) {
            word = e;
          }
        }
      }
      if (i != splitSentence.length - 1) {
        result += (word + " ");
      } else {
        result += word;
      }
    }
    return result;
  }

  //693. Binary Number with Alternating Bits
  bool hasAlternatingBits(int n) {
    String binary = '';
    while (n >= 1) {
      if (n % 2 == 1) {
        binary += '1';
      } else {
        binary += '0';
      }
      n ~/= 2;
    }
    for (var i = 0; i < binary.split('').length; i++) {
      if (i != binary.split('').length - 1) {
        if (binary.split('')[i] == binary.split('')[i + 1]) {
          return false;
        }
      }
    }
    return true;
  }

  //709. To Lower Case
  String toLowerCase(String s) {
    return s.toLowerCase();
  }

  //717. 1-bit and 2-bit Characters
  bool isOneBitCharacter(List<int> bits) {
    if (bits.length <= 1 && bits.last == 0) {
      return true;
    }
    if (bits.length <= 1 && bits.last == 1) {
      return true;
    }
    if (bits.length <= 2 && bits.last == 0 && bits[bits.length - 2] == 0) {
      return true;
    }
    if (bits.last == 0 && bits[bits.length - 2] == 0 ||
        (bits[bits.length - 2] == 1 &&
            bits[bits.length - 3] == 1 &&
            (bits.length - 3) % 2 == 0)) {
      return true;
    } else {
      return false;
    }
  }

  //728. Self Dividing Numbers
  List<int> selfDividingNumbers(int left, int right) {
    List<int> result = [];
    for (var i = left; i <= right; i++) {
      int tr = i.toString().length;
      int j = 0;
      for (var e in i.toString().split('')) {
        if (e != '0') {
          if (i % int.parse(e) == 0) {
            j++;
          }
        }
      }
      if (tr == j) {
        result.add(i);
      }
    }
    return result;
  }

  //744. Find Smallest Letter Greater Than Target
  String? nextGreatestLetter(List<String> letters, String target) {
    if (letters.last.codeUnits[0] < target.codeUnits[0]) {
      return letters[0];
    } else {
      for (var e in letters) {
        if (e.codeUnits[0] > target.codeUnits[0]) {
          return e;
        }
      }
    }
  }

  //796. Rotate String
  bool rotateString(String s, String goal) {
    int i = 0;
    while (i <= s.length) {
      if (s == goal) {
        return true;
      }
      String c = s[0];
      s = s.substring(1);
      s += c;
      i++;
    }
    return false;
  }

  //830. Position of Large Groups
  List<List<int>> largeGroupPositions(String s) {
    int c = 0;
    int fp = 0, lp = 0;
    String ml = s[0];
    List<List<int>> result = [];
    for (var i = 0; i < s.length; i++) {
      if (ml != s[i] || i == s.length - 1) {
        if (i == s.length - 1 && c >= 2 && ml == s[i]) {
          lp = i;
          result.add([fp, lp]);
          continue;
        }
        ml = s[i];
        if (c >= 3) {
          lp = i - 1;
          result.add([fp, lp]);
          fp = i;
          c = 1;
          continue;
        }
        fp = i;
        c = 1;
        continue;
      }
      c++;
    }
    return result;
  }

  //867. Transpose Matrix
  List<List<int>> transpose(List<List<int>> matrix) {
    List<List<int>> fMatrix = List.generate(
        matrix[0].length, (i) => List.generate(matrix.length, (j) => 0));
    print(fMatrix);
    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[i].length; j++) {
        fMatrix[j][i] = matrix[i][j];
      }
    }
    return fMatrix;
  }

  //896. Monotonic Array
  bool isMonotonic(List<int> nums) {
    Set<int> snums = nums.toSet();
    if (snums.length == 1) {
      return true;
    }
    if (snums.elementAt(0) < snums.elementAt(1)) {
      for (var i = 0; i < nums.length - 1; i++) {
        if (!(nums[i] <= nums[i + 1] && i <= i + 1)) {
          return false;
        }
      }
    }
    if (snums.elementAt(0) > snums.elementAt(1)) {
      for (var i = 0; i < nums.length - 1; i++) {
        if (!(nums[i] >= nums[i + 1] && i <= i + 1)) {
          return false;
        }
      }
    }
    return true;
  }

  //905. Sort Array By Parity
  List<int> sortArrayByParity(List<int> nums) {
    List<int> fnums = [];
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] % 2 == 0) {
        fnums.insert(0, nums[i]);
      } else {
        fnums.add(nums[i]);
      }
    }
    return fnums;
  }

  //917. Reverse Only Letters
  String reverseOnlyLetters(String s) {
    String result = '';
    List<String> string = s.split('');
    List<String> rstring = [];
    for (var i = string.length - 1; i >= 0; i--) {
      if ((string[i].codeUnits[0] >= 65 && string[i].codeUnits[0] <= 90) ||
          (string[i].codeUnits[0] >= 97 && string[i].codeUnits[0] <= 122)) {
        rstring.add(string[i]);
      }
    }
    int j = 0;
    for (var i = 0; i < string.length; i++) {
      if ((string[i].codeUnits[0] >= 65 && string[i].codeUnits[0] <= 90) ||
          (string[i].codeUnits[0] >= 97 && string[i].codeUnits[0] <= 122)) {
        result += rstring[j];
        j++;
      } else {
        result += '-';
      }
    }
    return result;
  }

  //977. Squares of a Sorted Array
  List<int> sortedSquares(List<int> nums) {
    List<int> results = [];
    for (var e in nums) {
      results.add(e * e);
    }
    results.sort();
    return results;
  }

  //1047. Remove All Adjacent Duplicates In String
  String removeDuplicatesII(String s) {
    List<String> ss = s.split('');
    for (var i = 0; i < ss.length - 1; i++) {
      if (i < 0) {
        continue;
      }
      if (ss[i] == ss[i + 1]) {
        ss.removeAt(i);
        ss.removeAt(i);
        i = i - 2;
      }
    }
    return ss.join('');
  }

  //1051. Height Checker
  int heightChecker(List<int> heights) {
    List<int> hs = [];
    hs.addAll(heights);
    int result = 0;
    hs.sort();
    for (var i = 0; i < heights.length; i++) {
      if (hs[i] != heights[i]) {
        result++;
      }
    }
    return result;
  }

  //1089. Duplicate Zeros
  void duplicateZeros(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == 0) {
        arr.insert(i, 0);
        arr.removeAt(arr.length - 1);
        i++;
      }
    }
  }

  //1221. Split a String in Blanced Strings
  int balancedStringSplit(String s) {
    int cr = 0;
    int cl = 0;
    int fr = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == 'R') cr++;
      if (s[i] == 'L') cl++;
      if (cr == cl) {
        fr++;
        cl = 0;
        cr = 0;
      }
    }
    return fr;
  }

  //1260
  List<List<int>> shiftGrid(List<List<int>> grid, int k) {
    List<int> tarr = [];
    List<List<int>> rgrid = [];
    for (var i = 0; i < grid.length; i++) {
      for (var j = 0; j < grid[i].length; j++) {
        tarr.add(grid[i][j]);
      }
    }
    print(tarr);
    for (var i = 0; i < k; i++) {
      tarr.insert(0, tarr.last);
      tarr.removeAt(tarr.length - 1);
    }
    print(tarr);
    int m = 0;
    for (var i = 0; i < grid.length; i++) {
      rgrid.add([]);
      for (var j = 0; j < grid[i].length; j++) {
        rgrid[i].add(tarr[m]);
        m++;
      }
    }
    return grid;
  }

  //1281.Subtract the Product and Sum of Digits of an Integer
  int subtractProductAndSum(int n) {
    List<String> splitedn = n.toString().split('');
    int product = 1, sum = 0;
    for (var e in splitedn) {
      product *= int.parse(e);
      sum += int.parse(e);
    }
    return product - sum;
  }

  //1276. Number of Burgers with No Waste of Ingredients
  List<int> numOfBurgers(int tomatoSlices, int cheeseSlices) {
    if (tomatoSlices % 2 == 1 || cheeseSlices > tomatoSlices ~/ 2) {
      return [];
    } else {
      //Matrix method
      int sb = 2 * cheeseSlices - tomatoSlices ~/ 2;
      int jb = -cheeseSlices + tomatoSlices ~/ 2;
      if (sb < 0 || jb < 0) return [];
      return [jb, sb];
    }
  }

  //1317. Convert Integer to the Sum of Two No-Zero Integers
  List<int> getNoZeroIntegers(int n) {
    for (var i = 1; i < n; i++) {
      int fn = i, sn = n - i;
      if (!fn.toString().contains('0') && !sn.toString().contains('0')) {
        return [fn, sn];
      }
    }
    return [1, 1];
  }

  //1365. How Many Numbers Are Smaller Than the Current Number
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> result = [];
    for (var i = 0; i < nums.length; i++) {
      result.add(0);
      for (var j = 0; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          result[i]++;
        }
      }
    }
    return result;
  }

  //1446. Consecutive Characters
  int maxPower(String s) {
    int max = 0;
    int c = 0;
    String chr = s[0];
    for (var i = 0; i < s.length; i++) {
      if (s[i] == chr) {
        c++;
      } else {
        if (c > max) {
          max = c;
        }
        c = 1;
        chr = s[i];
      }
    }
    return max;
  }

  //1496. Path Crossing dddddd
  bool isPathCrossing(String path) {
    List<String> listpath = path.split('');
    List<int> position = [0, 0];
    List<List<int>> historyPosition = [
      [0, 0]
    ];
    for (var i = 0; i < listpath.length; i++) {
      String p = listpath[i];
      print(p);
      switch (p) {
        case 'N':
          position[0] = position[0] + 1;
          print('N');
        case 'S':
          position[0] = position[0] - 1;
          print('S');
        case 'E':
          position[1] = position[1] + 1;
          print('E');
        case 'W':
          position[1] = position[1] - 1;
          print('W');
      }
      print(position);
      if (historyPosition.contains(position)) {
        return true;
      }
      int j = 0;
      historyPosition.add([]);
      for (var c in position) {
        historyPosition[i + 1].insert(j, c);
        j++;
      }
    }
    return false;
  }

  //1502. Can Make Arithmetic Progression From Sequence
  bool canMakeArithmeticProgression(List<int> arr) {
    arr.sort();
    int p = arr[1] - arr[0];
    for (var i = 1; i < arr.length - 1; i++) {
      if (arr[i] + p != arr[i + 1]) {
        return false;
      }
    }
    return true;
  }

  //1512. Number of Good Pairs
  int numIdenticalPairs(List<int> nums) {
    int result = 0;
    for (var i = 0; i < nums.length; i++) {
      for (var j = 0; j < nums.length; j++) {
        if (i != j && nums[i] == nums[j]) {
          result++;
        }
      }
    }
    return result ~/ 2;
  }

  //1518. Water Bottles
  int numWaterBottles(int numBottles, int numExchange) {
    int emptyBottles = 0;
    int result = 0;
    result += numBottles;
    do {
      emptyBottles += numBottles;
      numBottles = emptyBottles ~/ numExchange;
      emptyBottles -= numBottles * numExchange;
      result += numBottles;
    } while (numBottles + emptyBottles >= numExchange);
    return result;
  }

  //1528. Shuffle String
  String restoreString(String s, List<int> indices) {
    Map<int, String> word = {};
    for (var i = 0; i < s.length; i++) {
      word[indices[i]] = s[i];
    }
    String result = '';
    for (var i = 0; i < word.length; i++) {
      result += word[i]!;
    }
    return result;
  }

  //1544. Make The String Great
  String makeGood(String s) {
    List<String> ss = s.split('');
    for (var i = 0; i < ss.length - 1; i++) {
      if (ss[i].codeUnits[0] > 96 && ss[i].codeUnits[0] < 123) {
        if (ss[i].toUpperCase() == ss[i + 1]) {
          ss.removeAt(i + 1);
          ss.removeAt(i);
          i = -1;
          continue;
        }
      }
      if (ss[i].codeUnits[0] > 64 && ss[i].codeUnits[0] < 91) {
        if (ss[i].toLowerCase() == ss[i + 1]) {
          ss.removeAt(i + 1);
          ss.removeAt(i);
          i = -1;
          continue;
        }
      }
    }
    return ss.join();
  }

  //1556. Thousand Separator
  String thousandSeparator(int n) {
    List<String> nums = n.toString().split('');
    List<String> result = [];
    int count = 0;
    for (var i = nums.length - 1; i >= 0; i--) {
      if (count == 3) {
        result.insert(0, '.');
        result.insert(0, nums[i]);
        count = 1;
      } else {
        result.insert(0, nums[i]);
        count++;
      }
    }
    return result.join('');
  }

  //1608. Special Array With X Elements Greater Than or Equal X
  int specialArray(List<int> nums) {
    nums.sort();
    Map<int, int> map = {};
    for (var i = 0; i <= nums.last; i++) {
      int c = 0;
      for (var j = 0; j < nums.length; j++) {
        if (nums[j] >= i) {
          c++;
        }
      }
      map[i] = c;
    }
    print(map);
    for (var i = nums.last; i >= 0; i--) {
      if (map[i] == i) {
        return i;
      }
    }
    return -1;
  }

  //1748. Sum of Unique Elements
  int sumOfUnique(List<int> nums) {
    int result = 0;
    for (var e in nums.toSet()) {
      nums.remove(e);
      if (!nums.contains(e)) {
        result += e;
      }
    }
    return result;
  }

  //1773. Count Items Matching a Rule
  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    int c = 0;
    switch (ruleKey) {
      case 'type':
        for (var e in items) {
          if (e[0] == ruleValue) {
            c++;
          }
        }
        break;
      case 'color':
        for (var e in items) {
          if (e[1] == ruleValue) {
            c++;
          }
        }
        break;
      case 'name':
        for (var e in items) {
          if (e[2] == ruleValue) {
            c++;
          }
        }
        break;
    }
    return c;
  }

  //1816.Truncate Sentence
  String truncateSentence(String s, int k) {
    List<String> splits = s.split(' ');
    List<String> result = [];
    for (var i = 0; i < k; i++) {
      result.add(splits[i]);
    }
    return result.join(' ');
  }

  //1822. Sign of the Product of an Array
  int arraySign(List<int> nums) {
    if (nums.contains(0)) {
      return 0;
    }
    int sign = 1;
    for (var e in nums) {
      if (e < 0) {
        sign *= -1;
      }
    }
    return sign;
  }

  //1832. Check if the Sentence Is Pangram
  bool checkIfPangram(String sentence) {
    if (sentence.split('').toSet().length >= 26) {
      return true;
    } else {
      return false;
    }
  }

  //1837. Sum of Digits in Base K
  int sumBase(int n, int k) {
    int num;
    String str = '';
    while (n > 0) {
      num = n % k;
      n = n ~/ k;
      str += num.toString();
    }
    int fr = 0;
    for (var e in str.split('')) {
      fr += int.parse(e);
    }
    return fr;
  }

  //1844. Replace All Digits, with Characters
  String replaceDigits(String s) {
    int shift(String l, int n) {
      if (l.codeUnitAt(0) + n <= 122) {
        return l.codeUnitAt(0) + n;
      } else {
        return 97 + (122 - (l.codeUnitAt(0) + n));
      }
    }

    List<String> result = [];
    for (var i = 0; i < s.length - 1; i += 2) {
      result.add(s[i]);
      result.add(String.fromCharCode(shift(s[i], int.parse(s[i + 1]))));
    }
    if (s.length != result.length) {
      result.add(s[s.length - 1]);
    }
    return result.join('');
  }

  //1929. Concatenation of Array
  List<int> getConcatenation(List<int> nums) {
    List<int> tmp = [];
    for (var i = 0; i < nums.length; i++) {
      tmp.add(nums[i]);
    }
    for (var i = 0; i < nums.length; i++) {
      tmp.add(nums[i]);
    }
    return nums;
  }

  //1979. Find Greatest Common Divisor of Array
  int findGCD(List<int> nums) {
    nums.sort();
    int result = 0;
    int i = 1;
    int sn = nums.first;
    int ln = nums.last;
    while (sn >= i) {
      if (sn % i == 0 && ln % i == 0) {
        result = i;
      }
      i++;
    }
    return result;
  }

  //2000. Reverse Prefix of Word
  String reversePrefix(String word, String ch) {
    List<String> sWord = word.split('');
    String result = '';
    if (!sWord.contains(ch)) {
      return word;
    } else {
      int m = 0;
      for (var i = 0; i < sWord.length; i++) {
        if (sWord[i].codeUnits[0] == ch.codeUnits[0]) {
          m = i;
          break;
        }
      }
      for (var i = m; i >= 0; i--) {
        result += sWord[i];
      }
      for (var i = m + 1; i < sWord.length; i++) {
        result += sWord[i];
      }
    }
    return result;
  }

  //2011. Final Value of Variable After Performing Operations
  int finalValueAfterOperations(List<String> operations) {
    int x = 0;
    for (var e in operations) {
      if ('++X' == e || 'X++' == e) {
        x++;
      } else {
        x--;
      }
    }
    return x;
  }

  //2016. Maximum Difference Between Increasing Elements
  int maximumDifference(List<int> nums) {
    int result = -1;
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] < nums[j] && result < nums[j] - nums[i]) {
          result = nums[j] - nums[i];
        }
      }
    }
    return result;
  }

  //2022. Convert 1D Array Into 2D Array
  List<List<int>> construct2DArray(List<int> original, int m, int n) {
    int l = original.length;
    if (m * n != l) {
      return [];
    }
    int c = 0;
    List<List<int>> result = [];
    for (var i = 0; i < m; i++) {
      result.add([]);
      for (var j = 0; j < n; j++) {
        result[i].add(original[c]);
        c++;
      }
    }
    return result;
  }

  //2032. Two Out of Three
  List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
    List<int> result = [];
    for (var e in nums1) {
      if ((nums2.contains(e) || nums3.contains(e)) && !result.contains(e)) {
        result.add(e);
      }
    }
    for (var e in nums2) {
      if ((nums1.contains(e) || nums3.contains(e)) && !result.contains(e)) {
        result.add(e);
      }
    }
    for (var e in nums3) {
      if ((nums1.contains(e) || nums2.contains(e)) && !result.contains(e)) {
        result.add(e);
      }
    }
    return result;
  }

  //2057. Smallest Index With Equal Value
  int smallestEqual(List<int> nums) {
    int result = -1;
    for (var i = 0; i < nums.length; i++) {
      if (i % 10 == nums[i]) {
        return i;
      }
    }
    return result;
  }

  //2094. Finding 3-Digit Even Numbers
  List<int> findEvenNumbers(List<int> digits) {
    digits.sort();
    List<int> result = [];
    for (var e = 0; e < digits.length; e++) {
      for (var r = 0; r < digits.length; r++) {
        for (var t = 0; t < digits.length; t++) {
          if (digits[e] != 0) {
            int number = 100 * digits[e] + digits[r] * 10 + digits[t];
            if (number % 2 == 0 &&
                e != r &&
                r != t &&
                t != e &&
                !result.contains(number)) {
              result.add(number);
            }
          }
        }
      }
    }
    return result;
  }

  //2114. Maximum Number of Words Found in Sentences
  int mostWordsFound(List<String> sentences) {
    int max = 0;
    for (var i = 0; i < sentences.length; i++) {
      int c = sentences[i].split(' ').length;
      if (max < c) {
        max = c;
      }
    }
    return max;
  }

  //2119. A Number After a Double Reversal
  bool isSameAfterReversals(int num) {
    String result = '';
    String reversedNum = num.toString();
    for (var i = reversedNum.split('').length - 1; i >= 0; i--) {
      result += reversedNum.split('')[i];
    }
    reversedNum = result;
    result = '';
    for (var i = reversedNum.split('').length - 1; i >= 0; i--) {
      result += reversedNum.split('')[i];
    }
    print(num);
    print(result);
    if (int.parse(result) == num) {
      return true;
    } else {
      return false;
    }
  }

  //2129. Capitalize the Title
  String capitalizeTitle(String title) {
    List<String> words = title.split(' ');
    List<String> result = [];
    for (var i = 0; i < words.length; i++) {
      String word = '';
      if (words[i].split('').length <= 2) {
        word = words[i].toLowerCase();
      } else {
        for (var j = 0; j < words[i].split('').length; j++) {
          if (j == 0) {
            word += words[i].split('')[j].toUpperCase();
          } else {
            word += words[i].split('')[j].toLowerCase();
          }
        }
      }
      result.add(word);
    }
    return result.join(' ');
  }

  //2154. Keep Multiplying Found Values by Two
  int findFinalValue(List<int> nums, int original) {
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == original) {
        original *= 2;
        i = -1;
      }
    }
    return original;
  }

  //2176. Count Equal and Divisible Pairs in an Array
  int countPairsII(List<int> nums, int k) {
    int result = 0;
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && i * j % k == 0) {
          result++;
        }
      }
    }
    return result;
  }

  //2180. Count Integers With Even Digit Sum
  int countEven(int num) {
    int result = 0;
    for (var i = 1; i <= num; i++) {
      List<String> str = i.toString().split('');
      int sum = 0;
      for (var e in str) {
        sum += int.parse(e);
      }
      if (sum % 2 == 0) result++;
    }
    return result;
  }
}

/*
num binarySearch(num target, List<num> list) {
  num stop = 0;
  num mid = sum(list) ~/ list.length;
  while (mid != target) {
    mid = sum(list) ~/ list.length;
    if (mid > target) {
      list.removeRange(list.length ~/ 2, list.length);
    } else {
      list.removeRange(0, list.length ~/ 2);
    }
    if (stop == 10) {
      print('number not found');
      break;
    }
    stop++;
  }
  return mid;
}

num sum(List<num> list) {
  num sum = 0;
  for (var number in list) {
    sum += number;
  }
  return sum;
}


*/

bool listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) {
    return b == null;
  }
  if (b == null || a.length != b.length) {
    return false;
  }
  if (identical(a, b)) {
    return true;
  }
  for (int index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) {
      return false;
    }
  }
  return true;
}

class pSolutions {
  void searchMatch(List list1, List list2) {
    for (var e in list1) {
      if (list2.contains(e)) {
        print(e);
      }
    }
  }

  List<String> userWithoutSubscription(
      List<String> userAPI, List<String> userDB) {
    List<String> differenceList =
        userDB.toSet().difference(userAPI.toSet()).toList();
    return differenceList;
  }
}*/
