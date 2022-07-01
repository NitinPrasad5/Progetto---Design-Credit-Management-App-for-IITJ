import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  final String name;
  final Size size;
  const ProjectScreen({Key? key,required this.name,required this.size}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size data = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios),),
        backgroundColor: Colors.black,
        title: const Text(
          'Projects',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection(name).snapshots(),
        builder: (context,snapshot){
          if(snapshot.hasError){
            return Center( child: Text("error : ${snapshot.error}"),);
          }
          if (snapshot.connectionState == ConnectionState.waiting){
            return const Center( child: CircularProgressIndicator(),);

          }
          if(snapshot.data!.docs.isEmpty ) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("No Project is available right now."),
                  Text("Try again later."),
                ],
              ),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                padding: const EdgeInsets.all(10),
               // height: data.height*0.40,
                width: data.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(child: Text('${document["tittle"]}',style: const TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500)),),
                    const SizedBox(height: 10,),

                    // test code
                    const Text("Details : ",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 3,),
                    Text(
                      "    ${document["description"]}",
                      style: const TextStyle(fontSize: 15,color: Colors.white) ,
                      maxLines: 10,
                    ),
                    const SizedBox(height: 5,),

                    const Text("Pre-requisites : ",style: TextStyle(fontSize: 15,color: Colors.white),),
                    const SizedBox(height: 3,),
                    Text(
                      "    ${document["pre requisites"]}",
                      style: const TextStyle(fontSize: 15,color: Colors.white) ,
                      maxLines: 10,
                    ),
                    const SizedBox(height: 5,),

                    const Text("Vacancy : ",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 3,),
                    Text(
                      "    ${document["vacancy"]}",
                      style: const TextStyle(fontSize: 15,color: Colors.white) ,
                      maxLines: 10,
                    ),

                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children:  [
                    //         const Text("Details : ",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400),),
                    //         Expanded(
                    //           flex: 3,
                    //           child: Text(
                    //             "${document["description"]}",
                    //             style: const TextStyle(fontSize: 15,color: Colors.white) ,
                    //             maxLines: 10,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //     SizedBox(height: data.height*0.01,),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children:  [
                    //         const Text("Pre-requisites : ",style: TextStyle(fontSize: 15,color: Colors.white),),
                    //         Expanded(
                    //           flex: 4,
                    //           child: Text(
                    //             "${document["pre requisites"]}",
                    //             style: const TextStyle(fontSize: 15,color: Colors.white) ,
                    //             maxLines: 10,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //     SizedBox(height: data.height*0.01,),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children:  [
                    //         const Text("Vacancy : ",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400),),
                    //         Expanded(
                    //           flex: 4,
                    //           child: Text(
                    //             "${document["vacancy"]}",
                    //             style: const TextStyle(fontSize: 15,color: Colors.white) ,
                    //             maxLines: 10,
                    //           ),
                    //         )
                    //       ],
                    //     )
                    //   ],
                    // ),


                    // Text(
                    //   'Details : ${document["description"]}\n''\n'
                    //       'Pre-requisites : ${document["pre requisites"]}\n ''\n'
                    //       'Vacancy : ${document["vacancy"]}',
                    //   style: const TextStyle(fontSize: 15,color: Colors.white),
                    // ),
                    SizedBox(height: data.height*0.02,),
                  ],
                ),
              );
            }).toList(),
          );

        },
      ),
    );
  }
}

/*
ListView.builder(
              itemCount: data.size,
              itemBuilder: (BuildContext context, int index) {
                return Text("tittle; ${data.docs[index]["prof"]}");
                },
            );
 */

/*
Container(
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

                child: Column(
                  children: [
                    Center(child: Text("Project Title",style: TextStyle(fontSize: 17,color: Colors.white)),),
                    SizedBox(height: 7,),
                    Text(
                      'Details: Here project details will be displayed\n''\n'
                          'Pre-requisites: All the project pre-requisites will be listed here.\n ''\n'
                          'Duration: Expected time to complete the project.\n''\n'
                      'Vacancy: Vacancy of the project will be displayed here in realtime',
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(10),
                height: data.height*0.40,
                width: data.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    Center(child: Text("Project Title",style: TextStyle(fontSize: 17,color: Colors.white)),),
                    SizedBox(height: 7,),
                    Text(
                      'Details: Here project details will be displayed\n''\n'
                          'Pre-requisites: All the project pre-requisites will be listed here.\n ''\n'
                          'Duration: Expected time to complete the project.\n''\n'
                          'Vacancy: Vacancy of the project will be displayed here in realtime',
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
 */

