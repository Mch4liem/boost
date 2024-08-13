import 'package:boost/service/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  String category;
  Question({required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool show=false;
  int _currentIndex=0;
  getontheload() async {
    QuizStream = await DatabaseMethods().getCategoryQuiz(widget.category);
    setState(() {
      
    });
  }
  
  @override
    void initState() {
      getontheload();
      super.initState();
    }

  Stream? QuizStream;
  PageController controller= PageController();

  Widget allQuiz(){
    return StreamBuilder(
      stream: QuizStream, 
      builder: (context, AsyncSnapshot snapshot) {
  return snapshot.hasData
    ? PageView.builder(
        controller: controller,
        itemCount: snapshot.data.docs.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex=index;
          });
        },
        itemBuilder: (context, index){
            DocumentSnapshot ds= snapshot.data.docs[index];
            return Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 40, ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                              ds["Image"], 
                              height: 300, 
                              width: MediaQuery.of(context).size.width, 
                              fit: BoxFit.cover,
                          ),
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////Opsi1////////////////////////////////
                      GestureDetector(
                        onTap: () {
                          show=true;
                          setState(() {
                            
                          });
                        },
                        child: show? Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ds["correct"]==ds["option1"]?  Colors.green: Colors.red,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option1"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        ) : Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF818181),
                            width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option1"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        )
                      ),
                      ////////////////////////////////Opsi2////////////////////////////////
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          show=true;
                          setState(() {
                            
                          });
                        },
                        child: show? Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ds["correct"]==ds["option2"]?  Colors.green: Colors.red,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option2"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        ) : Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF818181),
                            width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option2"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////Opsi3////////////////////////////////
                      GestureDetector(
                        onTap: () {
                          show=true;
                          setState(() {
                            
                          });
                        },
                        child: show? Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ds["correct"]==ds["option3"]?  Colors.green: Colors.red,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option3"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        ) : Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF818181),
                            width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option3"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ////////////////////////////////Opsi 4////////////////////////////////
                      GestureDetector(
                        onTap: () {
                          show=true;
                          setState(() {
                            
                          });
                        },
                        child: show? Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ds["correct"]==ds["option4"]?  Colors.green: Colors.red,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option4"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        ) : Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF818181),
                            width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        child: Text(
                          ds["option4"], 
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 18, 
                            fontWeight: FontWeight.w500),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            
                            show = false;
                          });
                          controller.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,),
                                borderRadius: BorderRadius.circular(60)
                              ),
                              margin: EdgeInsets.only(right: 18),
                              child: Icon(Icons.arrow_forward_outlined, 
                              color: Colors.indigo,)),
                          ],
                        ),
                      )
                    ],
                  ),
              
            );
      }) : Container();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 20,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20,),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xFFA4A4A4),
                          borderRadius: BorderRadius.circular(60)
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back, 
                          color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(widget.category, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),)
                    ]
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: allQuiz()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}