class MyHashSet {
  List _set = [];
  MyHashSet() {}

  void add(int key) {
    if (!contains(key)) {
      _set.add(key);
    }
  }

  void remove(int key) {
    if (contains(key)) {
      _set.remove(key);
    }
  }

  bool contains(int key) {
    for (var e in _set) {
      if (e == key) {
        return true;
      }
    }
    return false;
  }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */