// Exception Handling Exercise 1
void throwException() {
  throw Exception('Exception');
}

void main() {
  try {
    throwException();
  } catch (e) {
    print('Exception: $e');
  }
}

// Exception Handling Exercise 2
void throwException() {
  throw FormatException('Invalid format');
}

void main() {
  try {
    throwException();
  } catch (e) {
    if (e is FormatException) {
      print('FormatException : $e');
    } else {
      print('exception caught: $e');
    }
  }
}

// Exception Handling Exercise 3
void main() {
  try {
    print('Executing try block');
    throw Exception('Exception occurred');
  } catch (e) {
    print('Exception: $e');
  } finally {
    print('Executing finally block');
  }
}