import 'package:flutter/material.dart';
import 'package:progetto/screens/widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size data = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
         // leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios),),
          backgroundColor: Colors.black,
          title: Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        drawer:  NavigationDrawer(size: data),
        body: Container(
          padding: EdgeInsets.all(5),

          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                //height: data.height*0.15,
                width: data.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    Center(child: Text("Nitin Prasad",style: TextStyle(fontSize: 17,color: Colors.white)),),
                    SizedBox(height: 7,),
                    Text(
                      'Email ID: prasad.3@iitj.ac.in\n''\n',
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(10),
                //height: data.height*0.15,
                width: data.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    Center(child: Text("Noopur Zambare",style: TextStyle(fontSize: 17,color: Colors.white)),),
                    SizedBox(height: 7,),
                    Text(
                      'Email ID: zambare.1@iitj.ac.in\n''\n',
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),

            ],
          ),
        )
    );;
  }
}
