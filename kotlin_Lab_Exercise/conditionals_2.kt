fun main() {
    val initialCost = 100.0
    val discountPercent = 0.6
    val thresholdPercent = 0.5

    var finalPrice: Double

    if (discountPercent > thresholdPercent) {
        finalPrice = initialCost * (1 - thresholdPercent)
    } else {
        finalPrice = initialCost * (1 - discountPercent)
    }

    println("Initial Cost: $$initialCost")
    println("Discount Percentage: ${(discountPercent * 100).toInt()}%")
    println("Final Price after Discount: $$finalPrice")
}
