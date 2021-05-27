// import 'package:flutter/material.dart';
// import 'package:start_trial/UI/pharmacy_welcome.dart';
// import '../registration/validation.dart';

// class PharRegisterScreen extends StatefulWidget {
//   @override
//   _PharRegisterScreenState createState() => _PharRegisterScreenState();
// }

// class _PharRegisterScreenState extends State<PharRegisterScreen> with ValidateRegister{
//   final formKey = GlobalKey<FormState>();

//   String name = '';
//   String sia = '';
//   String place = '';
//   String phone = '';
//   String email = '';
//   String password = '';

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color(0xFFFFFFFF),
//         child: SingleChildScrollView (
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(left:15, right:15),
//               height: MediaQuery.of(context).size.height/2.3,
//               decoration: BoxDecoration(
//                 color: Colors.white10,
//                 image: DecorationImage(
//                   image: AssetImage("assets/pharmacy.png"),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//       Padding(
//         padding: const EdgeInsets.only(top: 20),
//         child: Text(
//           "REGISTRASI FARMASI",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 25,
//             ),
//           ),
//         ),
//       Padding(
//         padding: EdgeInsets.only(top:1, left:20, right:20),
//        child: Form(
//          key: formKey,
//        child: Column(
//           children: [
//             nameField(),
//             siaField(),
//             placeField(),
//             phoneField(),
//             emailField(),
//             passwordField(),
//             registerButton(),
//         ],
//       )
//        ),
//       ),
//   ],
//   ),
//   ),
//   ),
//   );
// }

// Widget nameField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Nama Lengkap',
//       hintText: 'Tuliskan beserta gelar'
//     ),
//     validator: validateName,
//     onSaved: (String value) {
//       name = value;
//     }
//   );
// }

// Widget siaField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Nomor SIA/SIPA',
//     ),
//     validator: validateSIA,
//     onSaved: (String value) {
//       sia = value;
//     }
//   );
// }

// Widget placeField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Tempat Praktik',
//     ),
//     validator: validatePlace,
//     onSaved: (String value) {
//       place = value;
//     }
//   );
// }

// Widget phoneField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Nomor Telepon',
//     ),
//     validator: validatePhone,
//     onSaved: (String value) {
//       phone = value;
//     }
//   );
// }

// Widget emailField(){
//   return TextFormField(
//     keyboardType: TextInputType.emailAddress,
//     decoration: InputDecoration(
//       labelText: 'Alamat Email',
//       hintText: 'email@example.com',
//     ),
//     validator: validateEmail,
//     onSaved: (String value) {
//       email = value;
//     }
//   );
// }

// Widget passwordField() {
//   return TextFormField(
//     obscureText:true,
//     decoration: InputDecoration(
//       hintText: 'Masukkan Password',
//       labelText: 'Password'
//       ),
//     validator: validatePassword,
//     onSaved: (String value) {
//     password = value;
//     },
//   );
// }

// Widget registerButton() {
//   return RaisedButton(
//     onPressed: () {
//       if(formKey.currentState.validate()){
//         formKey.currentState.save();
//         print('Nama Lengkap: $name');
//         print('Nomor SIA/SIPA: $sia');
//         print('Tempat Praktik: $place');
//         print('Nomor Telepon: $phone');
//         print('Email: $email');
//         print('Password: $password');
//       }
//       Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePharmacy()),);
//     },
//    shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(80.0),
//     ),
//       padding: const EdgeInsets.all(0.0),
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(80.0),
//             ),
//           ),
//           constraints: const BoxConstraints(
//             minWidth: 150.0, 
//             minHeight: 36.0,
//           ),
//           alignment: Alignment.center,
//            child: const Text(
//             'DAFTAR',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//        ),
//     ),
//   );
// }
// }