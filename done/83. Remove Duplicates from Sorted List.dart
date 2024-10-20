class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    List<int> temp = [];
    while (head != null) {
      if (!temp.contains(head.val)) {
        temp.add(head.val);
      }
      head = head.next;
    }
    ListNode? ans = ListNode(temp[0]);
    ListNode? current = ans;
    for (var i = 1; i < temp.length; i++) {
      current!.next = ListNode(temp[i]);
      current = current.next;
    }
    return ans;
  }
}
