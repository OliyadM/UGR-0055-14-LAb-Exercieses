fun main(){
    fun findMax(numbers: List<Int>): Int? {
    return numbers.maxOrNull()
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null
    return numbers.average()
}

}
