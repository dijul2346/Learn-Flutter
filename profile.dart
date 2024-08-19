import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ScreenProfile());
  }
}

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Profile',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 208, 42, 42),
      ),
      // App Bar ends here

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Name'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Type your name',
                        hintStyle: (TextStyle(color: Colors.grey[700])),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Email'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Type your Email',
                        hintStyle: (TextStyle(color: Color.fromARGB(255,97,97, 97))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Mobile'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Type your Mobile Number',
                        hintStyle: TextStyle(color: Color.fromARGB(255, 97, 97, 97)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                      ),
                    ),))
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Address'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Type your Address',
                          hintStyle: TextStyle(color: Color.fromARGB(255, 97, 97, 97)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          )
                        ),
                        maxLines: 5,
                      ),))
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color.fromARGB(255, 208, 42, 42),
                  foregroundColor: Colors.white,
                ),
                 child: Text('Submit'),),
            )
          ],
        ),
      ),
    );
  }
}
