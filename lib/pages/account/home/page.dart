import 'package:auth_fire/import.dart';
import 'package:auth_fire/pages/account/home/controller.dart';

class AccountHomePage extends StatelessWidget {
  const AccountHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<AccountHomeController>(
          init: AccountHomeController(),
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Màn account'),
                  h(30),
                  ButtonBase(onTap: () {
                    controller.signOut();
                  }, title: 'Đăng xuất')
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
