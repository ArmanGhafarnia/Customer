import 'file:///C:/Users/asus/Desktop/git/Customer/lib/ProfileAndUsers/users/user.dart';
class Profile{
  User feli ;
  String name ;
  String lastname;
  int credit=0;
  List<String> restaurants =[];

  Profile() {
    for (int i = 0; i < User.users.length; i++) {
      if (User.users[i].use) {
        this.feli = User.users[i];
        this.name = feli.name;
        this.lastname = feli.lastname;
        break;
      }
    }
  }


}