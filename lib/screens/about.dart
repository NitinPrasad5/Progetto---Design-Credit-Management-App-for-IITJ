import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size data = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios),),
          backgroundColor: Colors.black,
          title: Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(5),

          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: data.height*0.40,
                width: data.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child:
                    Text(
                      'This App was developed as a part of the design credit project under the guidance of  Dr.Preeti Tiwari and Dr.Gaurav Kumar.\n''\n'
                      ' I am Nitin Prasad , second year student at IITJ and I developed this app with the aim of making the process of design credit course easy.\n''\n'
                          "The team of this project also have Noopur Zambare, who have developed a website with the same aim under this course",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),

              ),

            ],
          ),
        )
    );;
  }
}
