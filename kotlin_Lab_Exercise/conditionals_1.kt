fun main() {
    println("Enter your grade (0-100):")
    val grade = readLine()?.toIntOrNull()

    if (grade != null && grade in 0..100) {
        val letterGrade = when (grade) {
            in 90..100 -> "A"
            in 80..89 -> "B"
            in 70..79 -> "C"
            in 60..69 -> "D"
            else -> "F"
        }
        println("Your letter grade is: $letterGrade")
    } else {
        println("Invalid input! Please enter a grade between 0 and 100.")
    }
}
