import java.time.LocalTime
import java.time.format.DateTimeFormatter

fun main() {
    // Get the current time
    val currentTime = LocalTime.now()

    // Format the current time as a string (HH:mm:ss)
    val formattedTime = currentTime.format(DateTimeFormatter.ofPattern("HH:mm:ss"))

    // Print the current time
    println("Current time: $formattedTime")
}
