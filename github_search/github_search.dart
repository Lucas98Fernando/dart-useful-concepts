import 'dart:convert';
import 'dart:io';
import 'user_response.dart';

void main() async {
  bool searchAgain = true;

  print('Search GitHub Users');

  do {
    await render();
    searchAgain = await renderSearchAgain();
  } while (searchAgain);
}

bool renderSearchAgain() {
  emptySpace();
  print('Search again? (y) or (n)');
  final String? userResponse = readLine();

  if (userResponse == 'y') return true;
  return false;
}

Future render() async {
  emptySpace();
  print('Enter your username on GitHub:');
  final String? username = readLine();
  emptySpace();

  final String url = 'https://api.github.com/users/$username';
  final data = await fetchUser(url);

  showUserInfo(data);
}

void emptySpace() => print('');

String? readLine() => stdin.readLineSync(encoding: utf8);

Future<UserResponse?> fetchUser(String url) async {
  HttpClientRequest request = await HttpClient().getUrl(Uri.parse(url));
  HttpClientResponse response = await request.close();

  if (response.statusCode == 200) {
    final data = await response.transform(Utf8Decoder()).join();
    return UserResponse.fromJson(jsonDecode(data));
  } else {
    print('User not found!');
    return null;
  }
}

showUserInfo(UserResponse? user) {
  if (user != null) {
    for (var el in user.toJson().entries) {
      if (el.value != null) {
        print('${el.key} => ${el.value}');
      }
    }
  }
}
