class MyHashMap {
  List<List<int>> _map = [];
  MyHashMap() {}

  void put(int key, int value) {
    for (var i = 0; i < _map.length; i++) {
      if (_map[i][0] == key) {
        _map[i][1] = value;
        return;
      }
    }
    _map.add([key, value]);
  }

  int get(int key) {
    for (var i = 0; i < _map.length; i++) {
      if (_map[i][0] == key) {
        return _map[i][1];
      }
    }
    return -1;
  }

  void remove(int key) {
    for (var i = 0; i < _map.length; i++) {
      if (_map[i][0] == key) {
        _map.removeAt(i);
        return;
      }
    }
  }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param2 = obj.get(key);
 * obj.remove(key);
 */