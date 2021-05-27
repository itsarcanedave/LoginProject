// import 'package:flutter/material.dart';
// import 'registration/register.dart';

// class WelcomePatient extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Color(0xFF13E3D2),
//       ),
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 height: 450,
//                 width: double.infinity,
//                 margin: EdgeInsets.symmetric(horizontal:10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [],
//                 ),
//               ),
//             ],
//           ),
//           CustomPaint(
//             child:Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//             ),
//             painter: HeaderCurvedContainer(),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(30),
//               child: Text("Selamat Datang!", 
//                       style: TextStyle(fontSize: 35, letterSpacing: 1.5, color: Colors.black, fontWeight: FontWeight.bold),
//                       ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 width: MediaQuery.of(context).size.width/2,
//                 height: MediaQuery.of(context).size.width/2,
//                 decoration: BoxDecoration(
//                   border: Border.all(color:Color(0xFF5D74E2), width:5),
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                   image: DecorationImage(
//                     image: AssetImage('assets/patprofile.jpg'),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(padding: EdgeInsets.only(bottom:0, left:140),
//             child: CircleAvatar(
//               backgroundColor: Color(0xFF5D74E2),
//               child: IconButton(icon: Icon(Icons.edit, color: Colors.white,), onPressed: () {}, ),
//             ),
//           ),
//            Padding(
//               padding: const EdgeInsets.only(top: 110.0),
//               child: Text(
//               "Nam Joo Hyuk",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF53714B),
//                   fontSize: 16),
//             ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 170.0),
//               child: Text(
//                 "Entertainer",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0xFF53714B),
//                 ),
//               ),
//             ),
//           Padding(
//               //SET PADDING UNTUK MENENTUKAN BERAPA JARAK DARI OBJEK SEKITAR
//               padding: const EdgeInsets.only(left: 10, right: 10, top:400, bottom:70),
//               child: RaisedButton(
//                 onPressed: () {
//                   //FUNGSI DARI CODE DIBAWAH ADALAH UNTUK BERPINDAH KE HALAMAN DENGAN ROUTE /LOGIN
//                   //pushReplacementNamed BERARTI KETIKA BERPINDAH SCREEN, MAKA SCREEN SEBELUMNYA AKAN DIHAPUS SEHINGGA USER TIDAK MEMILIKI KEMAMPUAN UNTUK KEMBALI KE HALAMAN SEBELUMNYA
//                   //Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorLogin()),);
//                   //JANGAN LUPA UNCOMMENT DI ATAS APABILA HALAMAN LOGIN SUDAH DIBUAT
//                 },
//                 //MODIFIKASI BUTTONNYA MENJADI ROUNDED
//                 shape: RoundedRectangleBorder(
//                   //KEMUDIAN BORDERNYA DIBUAT MELENGKUNG DENGAN BORDER RADIUS
//                   borderRadius: BorderRadius.circular(80.0),
//                 ),
//                 padding: const EdgeInsets.all(0.0),
//                 //
//                 child: Container(
//                   //MEMBUAT DEKORASI GRADIENT DENGAN CONTAINER
//                   decoration: const BoxDecoration(
//                     //GRADIENT INI BISA MENAMPUNG BANYAK WARNA UNTUK DIKOMBINASIKAN
//                     gradient: LinearGradient(
//                       //SILAHKAN MASUKKAN CODE WARNANYA, JADI FORMATNYA JIKA INGIN MENGGUNAKAN HEXA COLOR ADALAH 0XFF DITAMBAHAN CODE HEXA, CONTOH HITAM: 0XFF000000 DIMANA 6 ANGKA 0 DIBELAKANG ADALAH HEXA COLOR UNTUK HITAM
//                       colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
//                     ),
//                     //DARI CONTAINER INI KITA SET BORDER RADIUSNYA DIMANA SETIAP SUDUTNYA MELENGKUNG SEBESAR 80
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(80.0),
//                     ),
//                   ),
//                   //KEMUDIAN TENTUKAN UKURANNYA AGAR MEMENUHI BUTTON
//                   constraints: const BoxConstraints(
//                     minWidth: 150.0, //SEBENARNYA WIDTH TIDAK PERLU DISET KARENA OTOMATIS MENGIKUTI
//                     minHeight: 36.0, //INI ADALAH UKURAN DEFAULT DARI RAISED BUTTON
//                   ),
//                   alignment: Alignment.center,
//                   //SELANJUTNYA MASUKKAN TEKS UNTUK TOMBOL TERSEBUT
//                   child: const Text(
//                     'SELESAI',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),  
//         ],
//       ),
//     );
//   }
// }

// class HeaderCurvedContainer extends CustomPainter{
//   @override 
//   void paint(Canvas canvas, Size size){
//     final paint = Paint()
//       ..color = Color(0xFF13E3D2);
//     Path path = Path()
//       ..relativeLineTo(0, 150)
//       ..quadraticBezierTo(size.width/2, 255, size.width, 150)
//       ..relativeLineTo(0, -150)
//       ..close();
//       canvas.drawPath(path, paint);
//   }
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate)=>false;
// }

