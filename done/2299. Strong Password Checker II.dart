// ignore_for_file: dead_code

class Solution {
  bool strongPasswordCheckerII(String password) {
    if (password.length < 8) {
      return false;
    }
    bool containUpperLetter = false;
    bool containLowerLetter = false;
    bool containDigit = false;
    bool containSpecialCharacter = false;
    String specialCharacter = '!@#\$%^&*()-+';
    for (var i = 0; i < password.length; i++) {
      if (password.length - 1 != i && password[i] == password[i + 1]) {
        return false;
      }
      if (!containDigit &&
          password[i].codeUnits[0] >= 48 &&
          password[i].codeUnits[0] <= 57) {
        containDigit = true;
      }
      if (!containSpecialCharacter && specialCharacter.contains(password[i])) {
        containSpecialCharacter = true;
      }
      if (!containUpperLetter &&
          password[i].codeUnits[0] >= 65 &&
          password[i].codeUnits[0] <= 90) {
        containUpperLetter = true;
      }
      if (!containLowerLetter &&
          password[i].codeUnits[0] >= 97 &&
          password[i].codeUnits[0] <= 122) {
        containLowerLetter = true;
      }
    }
    if (containDigit &&
        containSpecialCharacter &&
        containLowerLetter &&
        containUpperLetter) {
      return true;
    }
    return false;
  }
}
