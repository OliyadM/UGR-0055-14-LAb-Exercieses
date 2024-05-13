fun main(){
    fun analyze(inputString: String): Triple<Int, Int, Int> {
        val wordCount = inputString.split(Regex("\\s+")).count()
        val uppercaseCount = inputString.count { it.isUpperCase() }
        val vowelCount = inputString.count { it.toLowerCase() in "aeiou" }
        return Triple(wordCount, uppercaseCount, vowelCount)
    }
    

}