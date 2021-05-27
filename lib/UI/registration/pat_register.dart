// import 'package:flutter/material.dart';
// import 'package:start_trial/UI/patient_welcome.dart';
// import '../registration/validation.dart';

// class PatRegisterScreen extends StatefulWidget {
//   @override
//   _PatRegisterScreenState createState() => _PatRegisterScreenState();
// }

// class _PatRegisterScreenState extends State<PatRegisterScreen> with ValidateRegister{
//   final formKey = GlobalKey<FormState>();

//   String name = '';
//   String bpjs = '';
//   String job = '';
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
//               margin: EdgeInsets.only(left:10, right:10),
//               height: MediaQuery.of(context).size.height/2.5,
//               decoration: BoxDecoration(
//                 color: Colors.white10,
//                 image: DecorationImage(
//                   image: AssetImage("assets/pat.png"),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//       Padding(
//         padding: const EdgeInsets.only(top: 20),
//         child: Text(
//           "REGISTRASI PASIEN",
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
//             bpjsField(),
//             jobField(),
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

// Widget bpjsField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Nomor BPJS',
//     ),
//     validator: validateBPJS,
//     onSaved: (String value) {
//       bpjs = value;
//     }
//   );
// }

// Widget jobField() {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: 'Pekerjaan',
//     ),
//     validator: validateJob,
//     onSaved: (String value) {
//       job = value;
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
//         print('Nomor BPJS: $bpjs');
//         print('Pekerjaan: $job');
//         print('Nomor Telepon: $phone');
//         print('Email: $email');
//         print('Password: $password');
//       }
//       Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePatient()),);
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