import 'package:flutter/material.dart';

class halamanprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Nama Anggota")
        ),
        body: Center(
        child: ListView(
            children: <Widget>[
               new Text('DATA MAHASISWA', style: TextStyle(fontSize: 32)),
          const Divider(
            height: 2.0,
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Rejekina Pasaribu'),
            subtitle: const Text('2018020669'),
          ),
         new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Tiurma Sariana Situmorang'),
            subtitle: const Text('2018020040'),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Turi Rosmaida Manik'),
            subtitle: const Text('2018020035'),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Chika Priclya Matondang'),
            subtitle: const Text('2018020405'),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Kartika Dwitri Octavia Sebayang'),
            subtitle: const Text('2017020900'),
          ),
         RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali")
          ),
            ],
         ),
        ),
    );
  }
}


