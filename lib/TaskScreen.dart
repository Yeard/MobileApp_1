import 'package:assignment_1/MyPractice.dart';
import 'package:assignment_1/test.dart';
import 'package:flutter/material.dart';

class ContactModel {
  String name;
  ContactModel(this.name);
}

List<ContactModel> contacts = [
  ContactModel('Learn Flutter'),
  ContactModel('Tech State Management'),
  ContactModel('Import Provider Packages'),
  ContactModel('Add New Task')
];

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyPractice()));
        },
      ),
      body: Material(
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/TT.jpg'),
                  ),
                  Text(
                    "Tanvir Hossain",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  Text(
                    "Tanvir1433@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "My Tasks",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "3 Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            ///===========================

            /// body==
            Expanded(
              child: Material(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),

                //height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: contacts.length,
                            itemBuilder: (BuildContext contect, int index) {
                              return Test(
                                name: contacts[index].name,
                              );
                            }),
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

