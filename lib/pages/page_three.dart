import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Navigation'),
        leading: Container(), // menghilangkan button back otomatis appbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This page three',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('<< Back')
            )
          ],
        ),
      ),
    );
  }
}