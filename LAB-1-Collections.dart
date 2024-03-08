// Exercise 1: Create a list of your favorite hobbies and use various list methods like add, remove, sort, and isEmpty to manage the list contents.

void main() {
  List<String> favoriteHobbies = ['Reading', 'Hiking', 'Painting', 'Cooking'];

  // Print the initial list of favorite hobbies
  print('Initial list of favorite hobbies: $favoriteHobbies');

  // Add a new hobby to the list
  favoriteHobbies.add('Photography');
  print('After adding a hobby: $favoriteHobbies');

  // Remove a hobby from the list
  favoriteHobbies.remove('Hiking');
  print('After removing a hobby: $favoriteHobbies');

  // Sort the list of hobbies
  favoriteHobbies.sort();
  print('After sorting the hobbies: $favoriteHobbies');

  // Check if the list is empty
  print('Is the list empty? ${favoriteHobbies.isEmpty}');
}
