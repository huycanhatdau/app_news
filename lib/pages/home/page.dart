import 'package:auth_fire/pages/home/controller.dart';
import 'package:auth_fire/import.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = firebaseInstance.currentUser;

    return Scaffold(
      body: SafeArea(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            print('accountIdaccountId ${factories['accountId']}');

            return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ButtonBase(onTap: () {
                            controller.signOut();
                          }, title: 'Get accountId'),
                          h(30),
                          Text('aaaaaaaaaaa ${controller.accountText}'),
                          h(30),
                          Center(child: Text('Tài khoản: $currentUser'),),
                          // Center(child: Image.network('${currentUser?.photoURL}'),)
                        ],
                      ),
                    ),
                  ),
                ),
            );
          },
        ),
      ),
    );
  }
}

