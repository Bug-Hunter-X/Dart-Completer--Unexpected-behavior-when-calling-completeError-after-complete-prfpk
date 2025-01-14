```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  Timer(const Duration(seconds: 1), () {
    if (!completer.isCompleted) {
      completer.complete(42);
    }
  });

  final result = await completer.future;
  print('Result: $result'); //this will print 42 after 1 second

  // The following will not throw an error because we're checking isCompleted
  try {
    if (!completer.isCompleted) {
      completer.completeError(Exception('Something went wrong'));
    }
  } catch (e) {
    print('Error: $e');
  }
}
```