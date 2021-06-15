import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileServices {
  static CollectionReference profileList =
    Firestore.instance.collection('profileInfo');

  static Future <void> signUp(
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
    String uid, ) async {
    return await profileList
    .document(uid)
    .setData({
      'nama': name,
      'nomor sip': sip,
      'nomor bpjs': bpjs,
      'nomor sia': sia,
      'tempat praktik': place,
      'pekerjaan' : job,
      'instansi pelayanan': agency,
      'nomor telepon' : phone,
      'email' : email,
      'status': role
    });
  }

//   static Future <void> getCurrentUserData() async{
//     try {
//       DocumentSnapshot ds = await userCollection.doc(uid).get();
//       String  firstname = ds.get('FirstName');
//       String lastname = ds.get('LastName');
//       return [firstname,lastname];
//     }catch(e){
//       print(e.toString());
//       return null;
//     }
//   }
// }

// static Future <FirebaseUser> getProfileName() async {
  
//   try{
//     await ProfileServices.getDocuments(String uid).then((querySnapshot) {
//       querySnapshot.documents.forEach(element) {
//         itemsList.add(element.data);
//       };
//     });
//   }
//   catch (e) {
//     print(e.toString());
//     return null;
//   }
// }

}


