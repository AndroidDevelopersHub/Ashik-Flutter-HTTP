import 'package:http/http.dart' as http;
import 'package:shop_app/Model/UserModel.dart';


class Services {
  //
  static const String url = 'http://api.allgame365.online/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return List<User>();
      }
    } catch (e) {
      return List<User>();
    }
  }
}