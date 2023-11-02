import 'package:beginner_widgets/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});

   static const route = "/home";

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Row(
            children: [
              const Text("Reading Now",
                style: TextStyle(
                  fontFamily: "Tinos",
                  fontSize: 30,
                ),
              ),
              const SizedBox(width: 150,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.person_pin, size: 30,),),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body:  Column(
        children: [
          const Row(
            children: [
              SizedBox(width: 30,),
              Icon(Icons.circle_outlined, color: Colors.grey, size: 15,),
              SizedBox(width: 5,),
              Text("Today's reading 5 minutes left",
              style: TextStyle(
                fontFamily: "Tinos",
                fontSize: 12,
                color: CupertinoColors.activeBlue,
                fontStyle: FontStyle.normal,
              ),
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 0.3,
            indent: 30,
            endIndent: 70,
          ),
          const Row(
            children: [
              SizedBox(width: 35,),
              Text("Current",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Tinos",
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 35,),
              Image.asset("assets/images/flex.png"),
              const SizedBox(width: 35,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Code Breaker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text("12%",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Icon(Icons.more_horiz, color: Colors.grey, size: 25,)
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        debugPrint("TAP");
        Navigator.pushNamed(context, FirstPage.route);
      },
        splashColor: Colors.green,
        backgroundColor: Colors.black12,
        foregroundColor: Colors.black,
        child: const Icon(Icons.read_more, color: Colors.white,),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("")
          ],
        ),
      ),
    );
  }
}
