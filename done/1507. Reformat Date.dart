class Solution {
  String reformatDate(String date) {
    Map<String, String> months = {
      "Jan": '01',
      "Feb": '02',
      "Mar": '03',
      "Apr": '04',
      "May": '05',
      "Jun": '06',
      "Jul": '07',
      "Aug": '08',
      "Sep": '09',
      "Oct": '10',
      "Nov": '11',
      "Dec": '12'
    };
    List<String> sDate = date.split(' ');
    sDate[0] = sDate[0].replaceRange(sDate[0].length - 2, sDate[0].length, '');
    if (sDate[0].length == 1) sDate[0] = '0' + sDate[0];
    return sDate[2] + '-' + months[sDate[1]]! + '-' + sDate[0];
  }
}
