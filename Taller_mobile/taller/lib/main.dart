
import 'models/user.dart';
import 'services/api_service.dart';
import 'utils/filter.dart';

void main() async {
  try {
    List<User> users = await fetchUsers();

    filterUsersByUsernameLength(users);
    countUsersWithBizEmail(users);
  } catch (e) {
    print('Ocurrió un error: $e');
  }
}
