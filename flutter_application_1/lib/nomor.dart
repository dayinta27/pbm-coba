import 'package:flutter/material.dart';

class InputNomorHP extends StatefulWidget {
  const InputNomorHP({super.key});
  
  @override
  State<InputNomorHP> createState() => _InputNomorHPState();
}

class _InputNomorHPState extends State<InputNomorHP> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masukkan Nomor HP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Gunakan nomor yang terdaftar di kami.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nomor Hp',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Lakukan sesuatu dengan nomor HP yang dimasukkan
                final nomorHP = _controller.text;
                print('Nomor HP yang dimasukkan: $nomorHP');
              },
              child: Text('LANJUT'),
            ),
          ],
        ),
      ),
    );
  }
}
