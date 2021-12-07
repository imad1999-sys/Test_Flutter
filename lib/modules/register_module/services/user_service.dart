import 'package:firebase_auth/firebase_auth.dart';

class UserService{

  //instance from firebase auth
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //function to register with email and password using firebase service
  Future<User?> registerWithEmailAndPassword({required String userEmail , required String userPassword}) async {
    try{
      //register account using firebase
      var authUser = await firebaseAuth.createUserWithEmailAndPassword(email: userEmail, password: userPassword);

      //return the results
      return authUser.user;
    }catch(e){
      print(e.toString());
    }
  }

  //function to login with email and password using firebase service
  Future<User?> loginWithEmailAndPassword({required String userEmail , required String userPassword}) async {
    try{
      //login to account using firebase
      var authUser = await firebaseAuth.signInWithEmailAndPassword(email: userEmail, password: userPassword);

      //return the results
      return authUser.user;
    }catch(e){
      print(e.toString());
    }
  }

  //function to logout from account
  Future<void> signOutFromAccount() async{
    await firebaseAuth.signOut();
  }

  // function to check if user is logged in or not
  Future<bool> checkIfUserIsLoggedIn() async{
    var currentUser = await firebaseAuth.currentUser;
    return currentUser != null;
  }

  //function to get informations for current user
  Future<User?> getCurrentUser() async{
    return await firebaseAuth.currentUser;
  }
}