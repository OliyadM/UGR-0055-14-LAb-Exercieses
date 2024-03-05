void main() {
  //exercise 1

  maxx(lst) {
    int tempmax = lst[0];
    for (int index = 0; index < lst.length; ++index) {
      if (tempmax < lst[index]) {
        tempmax = lst[index];
      }
    }
    return tempmax;
  }


  print(maxx([1, 2, 3, 4]));


 //exercise 2

 
  String courseCode = '01';
  int classNumber = 7;
  String courseName = 'Mobile Development';

  print('Course Code: ' + courseCode);
  print('Class Number: ' + classNumber.toString());
  print('Course Name: ' + courseName);

  Map<String, dynamic> studentInfo = {
    'courseCode': courseCode,
    'classNumber': classNumber,
    'courseName': courseName,
  };

  print('\nStudent Information:');
  printMap(studentInfo);
}

void printMap(Map<dynamic, dynamic> map) {
  for (var key in map.keys) {
    print(key.toString() + ': ' + map[key].toString());
  }
}
