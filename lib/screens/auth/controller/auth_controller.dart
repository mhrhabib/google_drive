import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  login() async {
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      print('user Sigend in');
    }
  }
}
