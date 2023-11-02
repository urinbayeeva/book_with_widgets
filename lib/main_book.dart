import 'package:beginner_widgets/first_page.dart';
import 'package:flutter/material.dart';

class MainBook extends StatelessWidget {
   const MainBook({super.key});

  static const route = "/mainbook";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.black,
        title:  Row(
          children: [
            const SizedBox(width: 110, height: 20,),
            const Text("The Code Breaker",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 80,),
            IconButton(onPressed: (){
              debugPrint("TAPPED");
              Navigator.pushNamed(context, FirstPage.route);
            },
              icon:  const Icon(Icons.keyboard_return, color: Colors.white,),),
          ],
        ),
      ),
      body: const Column(
        children: [
          SizedBox(height: 50,),
          Text("INTRODUCTION",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: "Tinos",
          ),
          ),
          Divider(
            height: 20,
            indent: 100,
            endIndent: 100,
            color: Colors.white,
            thickness: 0.3,
          ),
      Text("Into the Breach",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: "Tinos",
          wordSpacing: 5,
          fontStyle: FontStyle.italic,
        ),
      ),
          SizedBox(height: 50,),
          Text("Jennifer Doudna couldn't sleep. Berkeley, the university",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Tinos",
            fontSize: 15,
          ),
          ),
          Text("where she was a superstar for her role in inventing the",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
          Text("gene-editing technology known as CRISPR, had just",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
          Text("shut down its campus because of the fast-spreading",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
          Text("coronavirus pandemic. Against her better judgment, she ",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
          Text("had driven her son, Andy, a high school senior, to the",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
          Text("train station so he could go to Fresno for a robot-build-",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tinos",
              fontSize: 15,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          children: [
            SizedBox(height: 40),
            Text("Chapter I"),
            SizedBox(height: 8),
            Text("Chapter II"),
            SizedBox(height: 8),
            Text("Chapter III"),
            SizedBox(height: 8),
            Text("Chapter IV"),
          ],
        ),
      ),
    ) ;
  }
}
