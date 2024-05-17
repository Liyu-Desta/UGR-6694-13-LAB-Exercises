fun main() {
    // Sample input
    val hoursWorked = 45
    val hourlyRate = 20.0

    // Calculate total salary
    val regularHours = if (hoursWorked > 40) 40 else hoursWorked
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    val totalSalary = (regularHours * hourlyRate) + (overtimeHours * hourlyRate * 1.5)

    // Print total salary
    println("The total salary is $$totalSalary")
}
