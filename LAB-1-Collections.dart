void main() {
   // exercise 1 
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
}
