import 'dart:io';

Future<void> main() async {
  try {
    var description = await File('path').readAsString();
    print(description);
  } on IOException catch (e) {
    print('file not found');
    print(e);
  } finally {
    // clear some disposable.
  }
}
