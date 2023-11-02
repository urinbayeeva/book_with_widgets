import 'package:beginner_widgets/homepage.dart';
import 'package:beginner_widgets/main_book.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  static const route = "/page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
           IconButton(onPressed: (){
             debugPrint("TAPPED");
             Navigator.pushNamed(context, HomePage.route);
           },
               icon:  const Icon(Icons.keyboard_return, color: Colors.white,),),
            const SizedBox(width: 110, height: 20,),
            const Text("The Code Breaker",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("THE",
          style: TextStyle(
            color: Colors.white,
             fontSize: 20,
            fontFamily: "Tinos",
            letterSpacing: 5,
          ),
          ),
          Text("CODE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Tinos",
              letterSpacing: 8,
            ),
          ),
          Text("BREAKER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: "Tinos",
              letterSpacing: 8,
            ),
          ),
          Divider(
            height: 20,
            indent: 60,
            endIndent: 60,
            color: Colors.white,
            thickness: 0.3,
          ),
          Text("Jennifer Doudna, Gene Editing and",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Tinos",
            ),
          ),
          Text("the Future of the Human Race",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Tinos",
            ),
          ),
          SizedBox(height: 50,),
          Text("WALTER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: "Tinos",
              letterSpacing: 5,
            ),
          ),
          Text("ISAACSON",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: "ISAACSON",
              letterSpacing: 5,
            ),
          ),
          SizedBox(height: 40,),
          Text("Simon & Schuster",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Tinos",
            ),
          ),
          Text("NEW YORK   LONDON  TORONTO  SYDNEY  NEW DELHI",
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
              fontFamily: "Tinos",
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("TAP");
          Navigator.pushNamed(context, MainBook.route);
        },
        splashColor: Colors.green,
        backgroundColor: Colors.black12,
        foregroundColor: Colors.black,
        child: const Icon(Icons.read_more, color: Colors.white,),
      ),
    );
  }
}
