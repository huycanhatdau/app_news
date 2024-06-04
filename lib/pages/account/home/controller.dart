import 'package:auth_fire/import.dart';

class AccountHomeController extends GetxController {
  // Future<void>

  Future<void> signOut() async {
    await AuthService().signOut();
  }
}
