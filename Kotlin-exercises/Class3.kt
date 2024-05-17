class ShoppingCart {
    // Mutable map to store items and their quantities
    private val items = mutableMapOf<String, Int>()

    // Method to add an item to the cart
    fun addItem(item: String, quantity: Int) {
        if (items.containsKey(item)) {
            items[item] = items[item]!! + quantity
        } else {
            items[item] = quantity
        }
    }

    // Method to remove an item from the cart
    fun removeItem(item: String, quantity: Int) {
        if (items.containsKey(item)) {
            val updatedQuantity = items[item]!! - quantity
            if (updatedQuantity <= 0) {
                items.remove(item)
            } else {
                items[item] = updatedQuantity
            }
        }
    }

    // Method to calculate the total price of all items in the cart
    fun calculateTotalPrice(prices: Map<String, Double>): Double {
        var totalPrice = 0.0
        for ((item, quantity) in items) {
            if (prices.containsKey(item)) {
                totalPrice += prices[item]!! * quantity
            }
        }
        return totalPrice
    }
}

fun main() {
    // Create a ShoppingCart object
    val cart = ShoppingCart()

    // Add items to the cart
    cart.addItem("Apple", 2)
    cart.addItem("Banana", 3)
    cart.addItem("Orange", 1)

    // Define prices for items
    val prices = mapOf("Apple" to 0.50, "Banana" to 0.30, "Orange" to 0.40)

    // Calculate and print the total price of items in the cart
    val totalPrice = cart.calculateTotalPrice(prices)
    println("Total price: $$totalPrice")
}
