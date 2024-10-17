import 'package:flutter/material.dart';
import 'page2.dart';
import 'input.dart';

void main() {
  runApp(const MaterialApp(home: LoginPage()));
}

class HelloWorld extends StatelessWidget {
  final String name;
  final String school;
  final String position;
  final String description;

  // Constructor to receive the data from the login page
  const HelloWorld({
    super.key,
    required this.name,
    required this.school,
    required this.position,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: const Color.fromRGBO(46, 7, 63, 0.7),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 110.0,
                          backgroundImage: AssetImage('assets/smile.jpeg'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 42, color: Colors.white),
                      ),
                      Text(
                        'A student at $school',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        'Experience $position',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        'Description: $description',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Page2()),
                          );
                        },
                        child: const Text('See More'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
