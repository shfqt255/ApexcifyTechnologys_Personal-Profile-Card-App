import 'package:flutter/material.dart';

class MyPortfolioApp extends StatefulWidget {
  const MyPortfolioApp({super.key});
  @override
  State<MyPortfolioApp> createState() => MyPortfolioAppState();
}

class MyPortfolioAppState extends State<MyPortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: const Text(
          'Shafqat Ullah',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Home"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("About"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Contacts"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Projects"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Experience"),
          ),
        ],
      ),

      // BODY STARTS
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------------- Header Section ----------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'I am',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Shafqat Ullah\nFlutter Developer',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                 SizedBox(width: 450,),

                  const CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/profile.jpg"), // optional
                  ),
                ],
              ),

              const SizedBox(height: 50),

              // ---------------- About Section ----------------
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                height: 3,
                width: 120,
                color: Colors.white,
              ),
              const SizedBox(height: 16),

              const Text(
                "I am Shafqat Ullah, a Computer Science graduate and a passionate Flutter Developer. "
                "I have a strong interest in learning, exploring new technologies, and developing user-friendly "
                "and maintainable products. I enjoy turning ideas into functional applications that solve "
                "real-world problems. I am currently seeking an internship or entry-level opportunity "
                "where I can contribute to meaningful projects, grow under industry professionals, "
                "and continue advancing my expertise.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
