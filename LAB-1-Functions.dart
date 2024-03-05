void main() {
//exercise 1

  double average(lst) {
    double sum = 0;
    for (double num in lst) {
      sum += num;
    }
    return sum / lst.length;
  }

//exercise 2
void printMap(Map<dynamic, dynamic> map) {
  for (var key in map.keys) {
    print(key, map[key]);
  }
}

void main() {
  Map<String, dynamic> myMap = {
    'name': 'oliyad',
    'age': 22,
    'city': 'addis ababa',
  };

  printMap(myMap);
}



  
}
