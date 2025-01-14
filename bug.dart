```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  Timer(const Duration(seconds: 1), () {
    completer.complete(42);
  });

  final result = await completer.future;
  print('Result: $result'); //this will print 42 after 1 second

  // The following will throw an error because the completer is already complete.
  try {
    completer.completeError(Exception('Something went wrong'));
  } catch (e) {
    print('Error: $e');
  }
}
```