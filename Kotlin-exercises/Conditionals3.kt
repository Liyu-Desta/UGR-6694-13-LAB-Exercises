fun main() {
    // Sample input
    val month = 5 // May
    val day = 17

    // Determine the season
    val season = when {
        (month == 12 && day >= 21) || (month in 1..2) || (month == 3 && day < 20) -> "Winter"
        (month == 3 && day >= 20) || (month in 4..5) || (month == 6 && day < 21) -> "Spring"
        (month == 6 && day >= 21) || (month in 7..8) || (month == 9 && day < 23) -> "Summer"
        (month == 9 && day >= 23) || (month in 10..11) || (month == 12 && day < 21) -> "Fall"
        else -> "Invalid date"
    }

    // Print the season
    println("The season is $season.")
}
