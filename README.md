# Silent Failure in Asynchronous Dart Code

This repository demonstrates a common but subtle bug in Dart code: silent failures in asynchronous operations.  The provided code fetches data from an API.  If the API call fails, the error is caught, but no user feedback or alternative action is taken. This leads to an application that appears functional but is actually not handling errors correctly.

The `bug.dart` file showcases this issue. The `bugSolution.dart` file demonstrates how to correctly handle errors by providing user feedback and potentially fallback mechanisms.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that even when the API call fails, no error message is displayed to the user.
3. Run `bugSolution.dart`.  Now you will see more informative error handling.