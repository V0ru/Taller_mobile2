
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/user.dart';

const String apiUrl = 'https://jsonplaceholder.typicode.com/users';

Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    List<dynamic> usersJson = json.decode(response.body);
    return usersJson.map((json) => User.fromJson(json)).toList();
  } else {
    throw Exception('Error al cargar los usuarios');
  }
}
