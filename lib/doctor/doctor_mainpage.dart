import 'package:flutter/material.dart';

class DoctorMain extends StatefulWidget {
  @override
  _DoctorMainState createState() => _DoctorMainState();
}

class _DoctorMainState extends State<DoctorMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nama Dokter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle), 
            onPressed:() {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorRegister()),);
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Nanti disini ada resep :)",
            style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'Buat Resep'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Kotak Pesan Terkirim'
          ),
        ],
      ),
    );
  }
}