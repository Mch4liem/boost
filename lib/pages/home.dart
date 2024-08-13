import 'package:boost/pages/question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF3F6),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    padding: EdgeInsets.only(left: 20.0, top: 50),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset("images/pp.png", 
                            height: 50, 
                            width: 50, 
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Abdul Halim", 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 22, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 220,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                            ),
                            child: Image.asset(
                              "images/quiz.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Belajar \nSambil \nBermain", 
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 26, 
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Tebak jawaban \ndi setiap gambar ", 
                              style: TextStyle(
                                color: Color(0xFFA4A4A4), 
                                fontSize: 15, 
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Mata Pelajaran", 
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 23, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Seni Budaya",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/sbk.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Seni Budaya", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Bahasa Arab
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Bahasa Arab",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/arab.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Bahasa Arab", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Matematika
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Matematika",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/mtk.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Matematika", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Bahasa Indo
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Indonesia",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/indo.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Indonesia", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Bahasa Inggris
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Inggris",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/inggris.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Inggris", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //PJOK
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=>Question(category: "Olahraga",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          width: 140,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("images/pjok.png", 
                                height: 60, 
                                width: 60, 
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text("Olahraga", 
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 18, 
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}