import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:start_trial/services/database_services.dart';
import 'package:start_trial/services/profile_services.dart';

class AuthServices{
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signUp(
    String name,
    String sip,
    String bpjs,
    String sia,
    String place,
    String job,
    String agency,
    String phone,
    String email,
    String role,
    String password) async {
    try{

    // TODO: cek ke firestore
    // TODO: lakukan query berdasarkan no SIP yang dimasukan
    // TODO: jika no SIP yang di query itu ada , tampilkan error
    // SHOW ERROR

    // TODO: jika no SIP ada, baru panggil fungsi ini

    AuthResult result = await _auth.createUserWithEmailAndPassword(
      email: email, password: password);
    FirebaseUser user = result.user;
    await ProfileServices.signUp(name, sip, bpjs, sia, place, job, agency, phone, email, role, user.uid);
    return user;
    } catch(e){
      print(e.toString());

      return null;
    }
  }

  static Future<FirebaseUser> signIn(String email, String password) async {
    try{
    AuthResult result = await _auth.signInWithEmailAndPassword(
      email: email, password: password);
    FirebaseUser user = result.user;
  
    return user;
    } catch(e){
      print(e.toString());

      return null;
    }
  }

  //Get Current User
  // static Future <void> currentUser() async{
  //   return await _auth.currentUser();
  // }

  static Future<void> signOut() async{
  _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream => _auth.onAuthStateChanged;
}



