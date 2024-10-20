class MyQueue {
  List<int> _queue = [];
  MyQueue() {}

  void push(int x) {
    _queue.add(x);
  }

  int pop() {
    int res = _queue[0];
    _queue.removeAt(0);
    return res;
  }

  int peek() {
    return _queue.first;
  }

  bool empty() {
    return _queue.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */