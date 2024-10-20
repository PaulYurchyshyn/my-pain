class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool checkTree(TreeNode? root) {
    int ans = root!.val;
    TreeNode? left = root.left;
    TreeNode? right = root.right;
    return ans == left!.val + right!.val;
  }
}
