class ParkingSystem {
  List<int> parkSpace = [0, 0, 0];
  ParkingSystem(int big, int medium, int small) {
    parkSpace[0] = big;
    parkSpace[1] = medium;
    parkSpace[2] = small;
  }

  bool addCar(int carType) {
    int temp = parkSpace[carType - 1] - 1;
    if (temp >= 0) {
      parkSpace[carType - 1]--;
      return true;
    } else {
      return false;
    }
  }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = ParkingSystem(big, medium, small);
 * bool param1 = obj.addCar(carType);
 */