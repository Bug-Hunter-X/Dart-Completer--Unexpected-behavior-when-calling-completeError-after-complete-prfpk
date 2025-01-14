# Dart Completer: Unexpected Behavior

This repository demonstrates a subtle bug related to the `Completer` class in Dart. The `bug.dart` file contains code that inadvertently attempts to complete a `Completer` twice.  This leads to an exception because a `Completer` can only be completed once. 

The `bugSolution.dart` file provides a corrected version that avoids this issue by checking the completion state before attempting another completion.