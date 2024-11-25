import 'dart:io';
import 'package:intl/intl.dart';

void main() async {
  print("Welcome to the Dart Utility Application!");
  print("1. String Manipulation");
  print("2. Collections");
  print("3. File Handling");
  print("4. Date and Time Operations");

  print("\nChoose an option (1-4):");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      stringManipulation();
      break;
    case '2':
      collectionsDemo();
      break;
    case '3':
      await fileHandlingDemo();
      break;
    case '4':
      dateAndTimeDemo();
      break;
    default:
      print("Invalid choice! Please choose between 1-4.");
  }
}

// 1. String Manipulation
void stringManipulation() {
  print("\nEnter a string:");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Input cannot be empty!");
    return;
  }

  String reversed = input.split('').reversed.join('');
  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  String concatenated = input + " - Concatenated String";

  print("\nString Manipulations:");
  print("Original: $input");
  print("Reversed: $reversed");
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");
  print("Concatenated: $concatenated");
}

// 2. Collections Demo
void collectionsDemo() {
  List<String> items = ["Apple", "Banana", "Cherry"];
  Set<String> uniqueItems = {"Orange", "Banana", "Apple"};
  Map<String, int> itemPrices = {
    "Apple": 100,
    "Banana": 50,
    "Cherry": 200,
  };

  print("\nCollections in Dart:");
  print("List: $items");
  print("Set (unique items): $uniqueItems");
  print("Map (item prices): $itemPrices");

  print("\nAdding a new item to each collection:");
  items.add("Grapes");
  uniqueItems.add("Pineapple");
  itemPrices["Grapes"] = 150;

  print("Updated List: $items");
  print("Updated Set: $uniqueItems");
  print("Updated Map: $itemPrices");
}

// 3. File Handling
Future<void> fileHandlingDemo() async {
  File inputFile = File("input.txt");
  File outputFile = File("output.txt");

  try {
    print("\nReading from input.txt...");
    String content = await inputFile.readAsString();

    print("Content of input.txt:");
    print(content);

    String modifiedContent = "Processed on ${DateTime.now()}\n$content";

    print("\nWriting to output.txt...");
    await outputFile.writeAsString(modifiedContent);

    print("Content written to output.txt successfully!");
  } catch (e) {
    print("An error occurred: $e");
  }
}

// 4. Date and Time Operations
void dateAndTimeDemo() {
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 10));

  print("\nCurrent Date and Time: ${DateFormat.yMMMMEEEEd().add_jm().format(now)}");
  print("Future Date (10 days later): ${DateFormat.yMMMMEEEEd().add_jm().format(futureDate)}");

  Duration difference = futureDate.difference(now);
  print("Difference in Days: ${difference.inDays}");
}
