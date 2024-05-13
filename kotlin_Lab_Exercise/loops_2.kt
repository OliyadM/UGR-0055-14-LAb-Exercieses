fun main() {
    val length = 8
    val password = generateRandomPassword(length)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val allowedChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*"
    val random = java.util.Random()
    val generatedPassword = StringBuilder()

    repeat(length) {
        val randomIndex = random.nextInt(allowedChars.length)
        val randomChar = allowedChars[randomIndex]
        generatedPassword.append(randomChar)
    }

    return generatedPassword.toString()
}
