class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    List<int> num1 = [];
    while (list1 != null) {
      num1.add(list1.val);
      list1 = list1.next;
    }
    List<int> num2 = [];
    while (list2 != null) {
      num2.add(list2.val);
      list2 = list2.next;
    }
    num1.addAll(num2);
    num1.sort();
    ListNode? ans = ListNode(num1.first);
    ListNode? current = ans;
    for (var i = 1; i < num1.length; i++) {
      int temp = num1[i];
      current!.next = ListNode(temp);
      current = current.next;
    }
    return ans;
  }
}
