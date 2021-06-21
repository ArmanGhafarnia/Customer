import 'package:customer/ProfileAndUsers/users/user.dart';

class Profile{
  User current ;
  String name ;
  String lastname;
  int credit=0;
  List<String> restaurants =[];

  Profile() {
    for (int i = 0; i < User.users.length; i++) {
      if (User.users[i].use) {
        this.current = User.users[i];
        this.name = current.name;
        this.lastname = current.lastname;
        break;
      }
    }
  }


}