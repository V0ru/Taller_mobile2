
import '../../models/user.dart';

void filterUsersByUsernameLength(List<User> users) {
  List<User> filteredUsers = users.where((user) => user.username.length > 6).toList();
  print('Usuarios con username de más de 6 caracteres:');
  filteredUsers.forEach((user) => print(user.username));
}

void countUsersWithBizEmail(List<User> users) {
  int count = users.where((user) => user.email.endsWith('.biz')).length;
  print('Cantidad de usuarios con correo .biz: $count');
}
