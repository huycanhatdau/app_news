import 'package:auth_fire/import.dart';

class HomeController extends GetxController {

  dynamic accountText = '';

  void getAccountId () async{
    final uid = await storageLocal.getValue('loginBox', 'accountId');
    print('factories[accountId] $uid');
    accountText = uid;
  }

  Future<void> signOut() async{
    await AuthService().signOut();
  }
}
