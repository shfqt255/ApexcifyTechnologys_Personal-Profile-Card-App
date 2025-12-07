import 'package:flutter/material.dart';
import 'portfolio_logical.dart';

class MyPortfolioApp extends StatefulWidget {
  const MyPortfolioApp({super.key});
  @override
  State<MyPortfolioApp> createState() => MyPortfolioAppState();
}

class MyPortfolioAppState extends State<MyPortfolioApp> {
  @override
  Widget build(BuildContext context) {
    final logic = PortfolioLogic();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //=======App Bar===========//
      appBar: AppBar(
        title: const Text(
          'Shafqat Ullah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: const Color.fromARGB(255, 22, 21, 21),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              if (value == 'Home') {
                logic.ScrollToSection(logic.homeKey);
              } else if (value == 'About') {
                logic.ScrollToSection(logic.aboutKey);
              } else if (value == 'Projects') {
                logic.ScrollToSection(logic.projectsKey);
              } else if (value == 'Experience') {
                logic.ScrollToSection(logic.expKey);
              } else if (value == 'Contacts') {
                logic.ScrollToSection(logic.contactsKey);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'Home', child: Text('Home')),
              PopupMenuItem(value: 'About', child: Text('About')),
              PopupMenuItem(value: 'Projects', child: Text('Projects')),
              PopupMenuItem(value: 'Experience', child: Text('Experience')),
              PopupMenuItem(value: 'Contacts', child: Text('Contacts')),
            ],
          ),
        ],
      ),
      //=======Body===========//
      body: SingleChildScrollView(
        controller: logic.scrollController,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //=======Home===========//
              Row(
                key: logic.homeKey,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Shafqat Ullah\nFlutter Developer',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          logic.Url(
                            'https://drive.google.com/file/d/1-rS-2b33b2eu21uG1RShNxAug_2rnhpx/view?usp=drive_link',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(0),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Resume',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  Spacer(),
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/profile.jpeg"),
                  ),
                ],
              ),

              const SizedBox(height: 50),
              //=======About===========//
              Card(
                key: logic.aboutKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .start,
                    children: [
                      const Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),

                      const Text(
                        "I am Shafqat Ullah, a Computer Science graduate and a passionate Flutter Developer. "
                        "I have a strong interest in learning, exploring new technologies, and developing user-friendly "
                        "and maintainable products. I enjoy turning ideas into functional applications that solve "
                        "real-world problems. I am currently seeking an internship or entry-level opportunity "
                        "where I can contribute to meaningful projects, grow under industry professionals, "
                        "and continue advancing my expertise.",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              //=======Education===========//
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      const Text(
                        'Education',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: .bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),
                      const Text(
                        'BS - Computer Science \t\t\t\t\t2021-2025',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text('Quaid-e-Azam University Islamabad'),
                      const SizedBox(height: 5),
                      const Text(
                        'Intermediate - Computer Science \t\t\t\t\t 2018-2020',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text('IMCB Islamabad'),
                      const SizedBox(height: 5),
                      const Text(
                        'Matriculation - Computer Science \t\t\t\t\t 2016-2018',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text('IMSB Islamabad'),
                    ],
                  ),
                ),
              ),
              //=======Projects===========//
              Card(
                key: logic.projectsKey,
                child: Padding(
                  padding: EdgeInsets.all(08),
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      const Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),
                      const Text(
                        'Tailors App (FYP) -- Flutter, Firebase',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'Built a tailoring management mobile app that allows tailors to store customer information,'
                        ' record measurements, manage orders, track delivery deadlines, financial record keeping, and an integrated To-Do list'
                        'for daily task management. Integrated Firebase for user authentication and data storage, ensuring secure, real-time access across devices. ',
                        textAlign: TextAlign.justify,
                      ),
                      GestureDetector(
                        onTap: () {
                          logic.Url(
                            'https://www.github.com/shfqt255/TailorsAppCode',
                          );
                        },
                        child: const Text(
                          'GitHub: github.com/shfqt255/TailorsAppCode\n',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                      const Text(
                        'Task Management App -- Flutter, Shared Prefrences ',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'Built a task management app with Flutter using Firebase Authentication for user accounts and SharedPreferences'
                        ' for local task storage. Features include sign-up/login, email verification, password reset, adding/deleting tasks, marking tasks as finished,'
                        ' and filtering by status, with FlutterToast for user feedback.',
                        textAlign: TextAlign.justify,
                      ),
                      GestureDetector(
                        onTap: () {
                          logic.Url(
                            'https://www.github.com/shfqt255/Task-ManagmentApp_dhcTask3',
                          );
                        },
                        child: const Text(
                          'GitHub: github.com/shfqt255/Task-ManagmentApp_dhcTask3\n',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                      const Text(
                        'Random Quote Generator -- Flutter, API, Provider State Management',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'A simple Random Quote Generator App built with Flutter. The app fetches quotes from a public API and displays them'
                        ' with a clean UI and smooth state management using Provider. This project was developed as part of an internship task assigned'
                        ' by Apexify Technologys.',
                        textAlign: TextAlign.justify,
                      ),
                      GestureDetector(
                        onTap: () {
                          logic.Url(
                            'https://github.com/shfqt255/ApexcifyTechnologys_RandomQuote_Generator',
                          );
                        },
                        child: const Text(
                          'GitHub: github.com/shfqt255/ApexcifyTechnologys_RandomQuote_Generator\n',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //=======Machine Learning Projects===========//
              Card(
                child: Padding(
                  padding: EdgeInsets.all(08),
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      const Text(
                        'Machine Learning Projects',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),
                      const Text(
                        'Placement Prediction',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'A machine learning project that predicts whether a student will get placed based on their CGPA and IQ using Logistic Regression. The dataset includes features such as CGPA, IQ, and placement status. The model is trained using Scikit-learn and includes standard scaling, data visualization, and real-time prediction input.',
                        textAlign: TextAlign.justify,
                      ),
                      const Text(
                        '\nHouse Price Prediction ',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'This project predicts house prices based on multiple features such as property type, location, city, area, bedrooms, and baths. It demonstrates how to prepare categorical and numerical data for machine learning, train a Linear Regression model, and make predictions for user-provided inputs.',
                        textAlign: TextAlign.justify,
                      ),
                      const Text(
                        '\nStudent Performance Prediction',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'A Machine Learning classification model built using Scikit-learn that predicts a student’s performance (Pass or Fail) based on study habits, attendance, sleep duration, and past scores.'
                        'The project demonstrates the complete ML workflow — from data preprocessing and model training to evaluation and visualization using a confusion matrix.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              //=======Experience===========//
              Card(
                key: logic.expKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      const Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),
                      const Text(
                        'Flutter App Developer Intern',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'Developers Hub Corporation_ IT services IT Consultant, Islamabad',
                        style: TextStyle(fontWeight: .bold),
                      ),
                      const Text(
                        'I completed a 1.5 month internship at DevelopersHub Corporation, where I independently developed Flutter applications using Firebase, SharedPreferences, and clean UI design practices. This experience helped me strengthen my development skills and build fully functional app modules on my own.',
                        textAlign: .justify,
                      ),
                      const Text(
                        '\nFlutter App Developer Intern ',
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                      const Text(
                        'Apexcify Technologys_ IT Services IT Consulting',
                        style: TextStyle(fontWeight: .bold),
                      ),
                      const Text(
                        'I also completed a 1-month internship at Apexcify Technologys, during which I independently created multiple Flutter app screens and features while improving my understanding of professional development workflows. These experiences enhanced my problem-solving abilities and gave me practical exposure to real app development.',
                        textAlign: .justify,
                      ),
                    ],
                  ),
                ),
              ),
              //=======Contacts===========//
              Card(
                key: logic.contactsKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      const Text(
                        'Contacts',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(height: 3, width: 120, color: Colors.blue),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          logic.EmailLaunch('shfqt25@gmail.com');
                        },
                        child: ListTile(
                          leading: Icon(Icons.email, color: Colors.blueGrey),
                          title: Text(
                            'shfqt@25gmail.com',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          logic.makeCall('+92 3195006813');
                        },
                        child: ListTile(
                          leading: Icon(Icons.call, color: Colors.blueGrey),
                          title: Text(
                            '+92 3195006813',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          logic.Url('https://www.linkedin.com/in/shfqt25');
                        },
                        child: ListTile(
                          leading: Icon(Icons.work, color: Colors.blueGrey),
                          title: Text(
                            'linkedin.com/in/shfqt25',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          logic.Url('github.com/shfqt255');
                        },
                        child: ListTile(
                          leading: Icon(Icons.code, color: Colors.blueGrey),
                          title: Text(
                            'github.com/shfqt255',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
