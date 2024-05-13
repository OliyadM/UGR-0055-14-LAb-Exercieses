fun main() {
    fun convertToUpperCase(words: List<String>): List<String> {
        return words.map { it.toUpperCase() }
    }
    fun filterValuesGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
        return numbers.filter { it > threshold }
    }
    fun calculateTotal(numbers: List<Int>): Int {
        return numbers.reduce { acc, num -> acc + num }
    }
}
