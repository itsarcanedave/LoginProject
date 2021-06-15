import 'package:flutter/material.dart';
import 'package:start_trial/patient/patient_signin.dart';
import 'package:start_trial/pharmacy/pharmacy_signin.dart';
import 'doctor/doctor_signin.dart';

class SigninStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 180),
              child: Text(
                "PILIH STATUSMU",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: RaisedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorLogin()),);
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
                    'DOKTER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),  
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: RaisedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PatientLogin()),);
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
                    'PASIEN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: RaisedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PharmacyLogin()),);
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
                    'FARMASI',
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
    );
  }
}