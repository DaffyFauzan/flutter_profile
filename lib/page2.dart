import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove shadow/elevation
        iconTheme: const IconThemeData(color: Colors.white), // White icons
      ),
      extendBodyBehindAppBar: true, // AppBar over the body content
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 600,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromRGBO(46, 7, 63, 0.7),
                  margin: const EdgeInsets.only(top: 50),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Minimize column size to fit content
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
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
                                radius: 80, // Size of the profile picture
                                backgroundImage: AssetImage('assets/smile.jpeg'), // Profile image
                              ),
                            ),
                            const SizedBox(width: 35), // Space between image and text
                            const Expanded(
                              child: Text(
                                "About Me",
                                style: TextStyle(
                                  fontSize: 50, color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis, // Prevent overflow in title
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Hi, I'm a student from SMK Wikrama Bogor. I have a passion for learning and technology, and I am constantly looking for ways to improve myself.",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Skills:",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "- Web Development (HTML, CSS, JavaScript, PHP, Laravel)\n"
                              "- Database Management (MySQL, SQLite)\n"
                              "- Problem-Solving and Critical Thinking",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Background:",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "I have been studying at SMK Wikrama Bogor, majoring in Software Engineering. As part of my curriculum, I have participated in various projects, including web and mobile app development. My recent focus has been on building a website called 'PIPAS' for monitoring crops.",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
