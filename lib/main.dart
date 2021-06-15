import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:start_trial/services/auth_services.dart';
import 'package:start_trial/doctor/doctor_mainpage.dart';
import 'package:start_trial/get_started.dart';
import 'package:start_trial/doctor/doctor_profile.dart';
import 'wrapper.dart';
import 'package:provider/provider.dart';
import 'services/database_services.dart';

void main() => runApp(MyApp());

class  MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

  class _MyAppState extends State<MyApp> {
  @override
  // void initState () async{
  //   super.initState();
  //   await DatabaseServices.medicineDetail({id:'M1', name:'Atropin', dose:'Sekali sehari sebelum tidur', char:'BPJS', qty:'0'});
  // }

  Widget build(BuildContext context) {
    //SIGN IN-SIGN UP
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DocProfile(), //Wrapper
      ),
    );

// -------------WRAPPER-----------------
//  class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //SIGN IN-SIGN UP
//     return StreamProvider.value(
//       value: AuthServices.firebaseUserStream,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: GetStarted(), //Wrapper
//       ),
//     );
    //-----------------CRUD DATA----------------------
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(title: Text("Firestore Demo"),),
    //       body: Container(
    //         child: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               RaisedButton(
    //                 child: Text("Add Data"),
    //                 onPressed: (){
    //                   DatabaseServices.createOrUpdateProduct("1", name:"Masker", price: 100000);
    //                 }),
    //                 RaisedButton(
    //                 child: Text("Edit Data"),
    //                 onPressed: (){
    //                   DatabaseServices.createOrUpdateProduct("1", name:"Masker", price: 200000);
    //                 }),
    //                 RaisedButton(
    //                 child: Text("Get Data"),
    //                 onPressed: () async {
    //                 DocumentSnapshot snapshot = await DatabaseServices.getProduct("1");
    //                 print(snapshot.data['nama']);
    //                 print(snapshot.data['harga']);
    //                 }),
    //                 RaisedButton(
    //                 child: Text("Delete Data"),
    //                 onPressed: (){
    //                   DatabaseServices.deleteProduct("1");
    //                 }),

    //             ],
    //           ),
    //         ),
    //     ),
    //   ),
    // );
  }
}

// -------------------IMAGE PICKER---------------------
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String imagePath;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Firebase Storage Demo"),
//           ),
//           body: Container(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   (imagePath != null)
//                     ? Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         border: Border.all(color:Colors.black),
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           image:NetworkImage (imagePath),
//                         fit: BoxFit.cover
//                         ),
//                       ),
//                     )
//                     : Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color:Colors.black)),
//                     ),
//                     SizedBox(
//                       height: 10,),
//                       RaisedButton(
//                       child: Text("Sign In"), 
//                       onPressed: () async {
//                       AuthServices.signInAnonymous();
//                       }),
//                     RaisedButton(
//                       child: Text("Upload Image"), 
//                       onPressed: () async {
//                       File file = await getImage();
//                       imagePath = await DatabaseServices.uploadImage(file);

//                       setState(() {});
//                       }),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//     );
//   }
// }

// Future<File> getImage() async{
//   return await ImagePicker.pickImage(source: ImageSource.gallery);
// }