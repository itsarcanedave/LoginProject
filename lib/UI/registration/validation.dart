// class ValidateRegister{

//   //VALIDASI NAMA LENGKAP
//   String? validateName(String value){
//     if (!value.contains('dr.')){
//       return 'Nama Harus Diisi Secara Lengkap Beserta Gelar';
//     }
//     return null;
//   }

//   //VALIDASI NOMOR SIP
//   String? validateSIP(String value){
//     if (value.length<8){
//       return 'Harus Berupa Nomor Dan 8 Karakter';
//     }
//     return null;
//   }

//  //VALIDASI NOMOR SIA/SIPA
//     String? validateSIA(String value){
//     if (value.length<8){
//       return 'Harus Berupa Nomor Dan 8 Karakter';
//     }
//     return null;
//   }

//   //VALIDASI NOMOR SIPA/SIPTTK
//     String? validateBPJS(String value){
//     if (value.length<8){
//       return 'Harus Berupa Nomor Dan 8 Karakter';
//     }
//     return null;
//   }

//   //VALIDASI TEMPAT PRAKTIK
//   String? validatePlace(String value){
//     if (value.isEmpty){
//       return 'Harus Diisi Secara Lengkap';
//     }
//     return null;
//   }

//   //VALIDASI PEKERJAAN
//   String? validateJob(String value){
//     if (value.isEmpty){
//       return 'Harus Diisi Secara Lengkap';
//     }
//     return null;
//   }

//   //VALIDASI NOMOR HANDPHONE
//   String? validatePhone(String value){
//     if (value.length<12){
//       return 'Harus Berupa Nomor';
//     }
//     return null;
//   }

//   //VALIDASI EMAIL
//   String? validateEmail(String value){
//     if (!value.contains('@') || !value.contains('.com')){
//       return 'Email Tidak Valid';
//     }
//     return null;
//   }

//   //VALIDASI PASSWORD
//   String? validatePassword(String value){
//     if (value.length < 6){
//       return 'Password Minimal 6 Karakter';
//     }
//     return null;
//   }
// }