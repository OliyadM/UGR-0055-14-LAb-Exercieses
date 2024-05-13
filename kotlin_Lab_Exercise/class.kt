class BankAccount(private val accountNumber: String, initialBalance: Double) {
    
    var balance: Double = initialBalance
        private set
    
    fun deposit(amount: Double) {
        balance += amount
    }
    
    fun withdraw(amount: Double) {
        if (amount > balance) {
            println("Insufficient funds! Cannot withdraw.")
        } else {
            balance -= amount
        }
    }
    
    fun printBalance() {
        println("Account Balance: $balance")
    }
}
