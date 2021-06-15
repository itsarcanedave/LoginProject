import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices{
  static CollectionReference medicineList = Firestore.instance.collection('medicineDetail');

  static Future<void> medicineDetail({String id, String name, String dose, String char, String price, String qty}) async {
      await medicineList.document(id).setData({
      'nama': name,
      'dosis': dose,
      'sifat': char,
      'harga': price,
      'qty': qty
    });
    return null;
  }

    static Future<String> uploadImage(File imageFile) async {
    String fileName = basename(imageFile.path);

    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(imageFile);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}


  // static Future<DocumentSnapshot> getProduct(String id) async {
  //   return await productCollection.document(id).get();
  // }

  // static Future<void> deleteProduct(String id) async {
  //   return await productCollection.document(id).delete();
  // }