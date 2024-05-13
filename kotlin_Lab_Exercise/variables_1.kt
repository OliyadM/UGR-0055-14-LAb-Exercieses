fun main() {
    print("Enter first number: ")
    val num1 = readLine()?.toDoubleOrNull() ?: return

    print("Enter second number: ")
    val num2 = readLine()?.toDoubleOrNull() ?: return

    print("Choose operation (Addition: A, Subtraction: S, Multiplication: M, Division: D): ")
    val operation = readLine()

    val result = when (operation?.uppercase()) {
        "A" -> num1 + num2
        "S" -> num1 - num2
        "M" -> num1 * num2
        "D" -> if (num2 != 0.0) num1 / num2 else {
            println("Error: Cannot divide by zero.")
            return
        }
        else -> {
            println("Error: Invalid operation.")
            return
        }
    }

    println(result)
}
