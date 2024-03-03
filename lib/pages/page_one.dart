import 'package:flutter/material.dart';
import './page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This main one',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageTwo();
                    }
                  )
                );
              },
              child: Text('Next Page >>')
            )
          ],
        ),
      ),
    );
  }
}