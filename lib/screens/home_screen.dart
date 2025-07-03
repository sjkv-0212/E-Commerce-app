// screens/auth_screen.dart
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  
  Future<void> _signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }
  // Build UI...
}
