import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenghitungHargaBarang extends StatefulWidget {
  @override
  MenghitungHargaBarangState createState() => MenghitungHargaBarangState();
}

class MenghitungHargaBarangState extends State<MenghitungHargaBarang> {
  double hargabarang1 = 0;
  double hargabarang2 = 0;
  double hargabarang3 = 0;
  double hargabarang4 = 0;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Aplikasi Hitung Harga'),
        backgroundColor: Colors.pink,
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(''),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Nama Customer",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Harga Barang 1",
                  icon: Icon(Icons.add_shopping_cart_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt) {
                  setState(() {
                    hargabarang1 = double.parse(txt);
                  });
                },
              ),
              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Harga Barang 2",
                  icon: Icon(Icons.add_shopping_cart_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt) {
                  setState(() {
                    hargabarang2 = double.parse(txt);
                  });
                },
              ),
              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Harga Barang 3",
                  icon: Icon(Icons.add_shopping_cart_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt) {
                  setState(() {
                    hargabarang3 = double.parse(txt);
                  });
                },
              ),
              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Harga Barang 4",
                  icon: Icon(Icons.add_shopping_cart_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt) {
                  setState(() {
                    hargabarang4 = double.parse(txt);
                  });
                },
              ),
              Text(''),
              Text(''),
              RaisedButton(
                child: Text(
                  "Hitung",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
                onPressed: () {
                  setState(() {
                    total = (hargabarang1 +
                        hargabarang2 +
                        hargabarang3 +
                        hargabarang4);
                  });
                },
              ),
              Text(""),
              Text("Total Harga"),
              Text(""),
              Text(
                "Rp.$total",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
