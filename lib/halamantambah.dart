import 'package:flutter/material.dart';


class halamantambah extends StatelessWidget {
  final DBHelper database = DBHelper();
  final TextEditingController txtbarang = new TextEditingController();
  final TextEditingController txtharga = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Tambah Data Elektronik"),
      ),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          TextField(
            controller: txtbarang,
            decoration: InputDecoration(labelText: 'Nama Barang'),
          ),
          TextField(
            controller: txtharga,
            decoration: InputDecoration(labelText: 'Harga'),
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed: _onTambah, child: Text('Tambah')),
          ElevatedButton(onPressed: _onTampil, child: Text('Menampilkan Data')),
          RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali")
          ),
        ],
      ),
    );
  }

  void _onTambah() async {
    database.db;
    await database.tambahbarang(
        {'Nama Barang': txtbarang.text, 'Harga': int.parse(txtharga.text)});
    print('Data berhasil disimpan');
  }

  void _onTampil() async {
    print(await database.databarang());
  }
}
