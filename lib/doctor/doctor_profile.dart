// Get Current User
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:start_trial/doctor/doctor_mainpage.dart';

class DocProfile extends StatefulWidget {
  @override
  _DocProfileState createState() => _DocProfileState();
}

class _DocProfileState extends State<DocProfile> {
// -------------------CURRENT USER---------------------
FirebaseUser user; 
Future<void>getUserData() async{
  FirebaseUser userData = await FirebaseAuth.instance.currentUser();
  setState(() {
        user = userData;
        print(userData.email);
      });
}

// void _getUserData() {
//     documentReference.get().then((datasnapshot) {
//       if (datasnapshot.exists) {
//         setState(() {
//           nama = datasnapshot.data()['name'];
//           phone = datasnapshot.data()['phone'];
//           // points = datasnapshot.data()['points'];
//         });
//       }


  @override
  void initState(){
    super.initState(); 
    getUserData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILMU'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              user == null?
              Text('Nama: ${user.name}'),
              Center(
                child: user == null? 
                FlatButton(
                  textColor: Colors.white,
                  color: Colors.lightBlueAccent,
                   child: Text('Selesai'),
                   onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorMain()),);
                   },
                  ): Container(
                    child: Column(
                  ),
                )
              ),
            ],
          ),
      ),
    );
  }
}


//Get All Databases
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class DocProfile extends StatefulWidget {
//   @override
//   _DocProfileState createState() => _DocProfileState();
// }

// class _DocProfileState extends State<DocProfile> {
//       @override
//       void initState() {
//         super.initState();
//         getprofileInfo().then((results) {
//           setState(() {
//             querySnapshot = results;
//           });
//         });
//       }

//       QuerySnapshot querySnapshot;
//       @override
//       Widget build(BuildContext context) {
//         return Scaffold(
//           body: _showProfile(),
//         );
//       }

//     //build widget as prefered
//     //i'll be using a listview.builder
//       Widget _showProfile() {
//         //check if querysnapshot is null
//         if (querySnapshot != null) {
//           return ListView.builder(
//             primary: false,
//             itemCount: querySnapshot.documents.length,
//             padding: EdgeInsets.all(12),
//             itemBuilder: (context, i) {
//               return Column(
//                 children: <Widget>[
// //load data into widgets
//                   Text("${querySnapshot.documents[i].data['nama']}"),
//                   // Text("${querySnapshot.documents[i].data['car1']}"),
//                   // Text("${querySnapshot.documents[i].data['car2']}"),
//                   // Text("${querySnapshot.documents[i].data['car5']}"),
//                   // Text("${querySnapshot.documents[i].data['name']}"),
//                   // Text("${querySnapshot.documents[i].data['phone']}"),
//                 ],
//               );
//             },
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       }

//       //get firestore instance
//       getprofileInfo() async {
//         return await Firestore.instance.collection('profileInfo').getDocuments();
//       }
//     }
