import 'dart:convert';
import 'package:http/http.dart' as http;

const String url = "https://jsonplaceholder.typicode.com/albums/1";

Future main(List<String> args) async {
  // var response = await http.get(url);
  // if (response.statusCode == HttpStatus.notFound) {
  //   print("not found");
  // } else {
  //   print(response.contentLength);
  // }
  // print(response.statusCode);
  var albums = await fetchAlbum();
  print(albums.id);
  print(albums.title);
  print(albums.userId);
}

// Future<http.Response> fetchAlbum() {
//   return http.get(url);
// }

Future<Album> fetchAlbum() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json['userId'], id: json['id'], title: json['title']);
  }
}
