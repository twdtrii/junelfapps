import 'package:flutter/material.dart';
import 'package:junelfapps/compe_artic/ovt_artic.dart';
import 'package:junelfapps/timeline/articel1.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
          GestureDetector(
          onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          width: 50,
          height: 50,
          child: Image.asset(
          "assist/logo2.png",
            fit: BoxFit.contain,
        ),
        ),
      ),
      ],
    backgroundColor: Color(0xFF3D55D1),
    elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
          child: ListView(
          scrollDirection: Axis.horizontal,
            children: [

          Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                margin: EdgeInsets.all(6.0),
                child: Image.asset("assist/konsulicon.png"),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
    ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => Topik1()
                      )
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("assist/timeline.png"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  child: Image.asset("assist/music1.png"),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  child: Image.asset("assist/bg_vid.png"),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
    ),
      ],
      ),
    ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Articel1()
                  )
              );
            },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Image.asset("assist/articel1.png"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          ),
          GestureDetector(
          onTap: (){
          Navigator.push(context,
          MaterialPageRoute(
          builder: (context) => Articel1()
              )
              );
            },
          child: Container(
          margin: EdgeInsets.all(10),
          child: Image.asset("assist/articel2.png"),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          ),
           ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Articel1()
                  )
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset("assist/articel3.png"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
    ],
    ),
          );
  }
}


