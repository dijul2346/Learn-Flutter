import 'package:flutter/material.dart';
import 'package:ui_positioning/profile.dart';

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

class ScreenStudentList extends StatelessWidget {
  const ScreenStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Students',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 30, top: 10, right: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Marc',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('8976548907',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  ),
)

                
              ],
            ),

            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Eddy',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('876789543',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  )),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Abel',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('8769876545',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  )),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Mathew',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('8769876545',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  )),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Zeus',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('9876545987',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  )),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Jack',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('656789876',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  ))
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
                    child: Text('Tom',
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 80, 192),
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('8876567896',
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 80, 192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),const Spacer(),
            Padding(
  padding: const EdgeInsets.only(top: 10),
  child: IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenProfile(), 
        ),
      );
    },
    icon: const Icon(Icons.arrow_circle_right),
  )),
              ],
            )
          ]),
        )
        // App Bar ends here
        );
  }
}
