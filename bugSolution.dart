```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Provide feedback to the user
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions and provide user feedback
    print('Error fetching data: $e');
    // Show an error message to the user (e.g., using a snackbar or dialog)
    // Consider implementing retry logic or fallback mechanisms
  }
}
```