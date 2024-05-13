fun main() {
    print("Enter distance: ")
    val distance = readLine()?.toDoubleOrNull() ?: return

    print("Enter unit (1 for kilometers, 2 for miles): ")
    val unit = readLine()?.toIntOrNull() ?: return

    val convertedDistance = when (unit) {
        1 -> distance * 0.621371
        2 -> distance * 1.60934
        else -> {
            println("Error: Invalid unit.")
            return
        }
    }

    println(Converted distance)
}
