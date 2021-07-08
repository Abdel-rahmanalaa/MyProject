import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            TextButton(
                onPressed: ()
                {
                  setState(() {
                    counter--;
                    print(counter);
                  });

                },
                child: Text(
                  'Minus',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState(() {
                  counter++;
                  print(counter);
                });
              },
              child: Text(
                'Plus',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
