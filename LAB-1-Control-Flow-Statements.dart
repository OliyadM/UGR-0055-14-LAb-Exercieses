void main() {
  int date = 1;
  //exercise 1
  switch (date) {
    case 1:
      print('monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('wednesday');
      break;
    case 4:
      print('thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('invalid date');
  }
  // exercise 2
  int n = 10;
  int cur = 0;
  int next = 1;
  for (int i = 0; i < n; i++) {
    print(cur);
    int temp = cur + next;
    cur = next;
    next = temp;
  }
}
