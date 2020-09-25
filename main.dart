import 'dart:io';

main(List<String> args) {
  File('file.txt')
      .readAsString().then((content) => {
     print(content)
  });
}
