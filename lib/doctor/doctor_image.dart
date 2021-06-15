import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../services/auth_services.dart';
import '../services/database_services.dart';
import 'doctor_mainpage.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  String imagePath;

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                      child: 
                      Text(
                        "PASANG PROFILMU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF53714B),
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ), 
                    Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "dr. Honey",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF53714B),
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ), 
                  (imagePath != null)
                    ? Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color:Colors.black),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:NetworkImage (imagePath),
                        fit: BoxFit.cover
                        ),
                      ),
                    )
                    : Container(
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:Colors.black)),
                    ),
                    RaisedButton(
                      onPressed: () async {
                      File file = await getImage();
                      imagePath = await DatabaseServices.uploadImage(file);

                      setState(() {});
                      },
                       shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0),
                              ),
                              padding: const EdgeInsets.only(top: 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                                      ),
                                      borderRadius: BorderRadius.all(
                                      Radius.circular(80.0),
                                      ),
                                    ),
                                constraints: const BoxConstraints(
                                  minWidth: 150.0, 
                                  minHeight: 36.0,
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  'UNGGAH FOTO',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: RaisedButton(
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorMain()),);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0),
                          ),
                          padding: const EdgeInsets.all(0.0),
                          //
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(80.0),
                              ),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 150.0, 
                              minHeight: 36.0, 
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'SELESAI',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ), 
                  ],
                ),
              ),
            ),
          ),
    );
  }
}

Future<File> getImage() async{
  return await ImagePicker.pickImage(source: ImageSource.gallery);
}