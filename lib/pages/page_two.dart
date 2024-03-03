import 'package:flutter/material.dart';
import 'package:learn_flutter_navigation/pages/page_three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
              'This page two',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '<< Back'
                  )
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PageThree();
                        }
                      )
                    );
                  },
                  child: Text(
                    'Next >>'
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
