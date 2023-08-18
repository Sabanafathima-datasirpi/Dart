import 'package:scoped_model/scoped_model.dart';

class Profile extends Model {
  String name = "";
  bool editing = false;

  String get enteredName => name;
   bool get editedName => editing;

  void updateName(String newName) {
    name = newName;
    editing = false;
    notifyListeners();
  }

   void startEditing() {
    editing = true;
    notifyListeners();
  }
}
