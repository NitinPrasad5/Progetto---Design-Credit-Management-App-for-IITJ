import 'package:progetto/screens/detailsscreen.dart';
import 'package:progetto/screens/widgets.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size data = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: NavigationDrawer(size: data,),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header(size: data),
            Container(
              padding: const EdgeInsets.only(
                left: 15,
                right: 10,
                bottom: 10,
              ),
              //height: data.height * 0.15,
              width: data.width,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius:  BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Find Your', style: TextStyle(color: Colors.white,fontSize:20),),
                  SizedBox(height: 5,),
                  Text('Project',style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            //SizedBox(height: data.height*0.01,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: data.height*0.30,
                      width: data.width -16,
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Design Credit Course',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: data.height*0.02,),
                          GestureDetector(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen() ));},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'A student must complete Six design credits to meet the degree requirements.\n''\n'
                                      'The student may choose a project form the 6 categories.\n ''\n''Students are required to complete'
                                      ' 3 design courses of 2 credit each.',
                                  style: TextStyle(fontSize: 15,color: Colors.white),
                                ),
                                SizedBox(height: data.height*0.01,),

                                const Center(child: Text("Tap to know more",style: TextStyle(fontSize: 12,color: Colors.white70),),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: data.height*0.03,),
                    const Text(
                      'Select Department',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: data.height*0.02,),
                    SizedBox(
                      height: data.height*0.35,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          DepartmentCard(image: 'assets/AI.jpg', name: 'Artificial Intelligence and Data Engineering', size: data),
                          DepartmentCard(image: 'assets/BB2.jpg', name: 'Bioscience and BioEngineering', size: data),
                          DepartmentCard(image: 'assets/CH.jpeg', name: 'Chemical Engineering', size: data),
                          DepartmentCard(image: 'assets/EE.jpg', name: 'Electrical Engineering', size: data),
                          DepartmentCard(image: 'assets/Phy.jpg', name: 'Physics', size: data),
                          DepartmentCard(image: 'assets/ME.jpg', name: 'Mechanical Engineering', size: data),
                        ],

                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   double xOffset=0;
//   double yOffset=0;
//   double scaleFactor=1;
//   bool isDrawerOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     Size data = MediaQuery.of(context).size;
//     return AnimatedContainer(
//       transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
//       duration: Duration(milliseconds: 250),
//
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(isDrawerOpen?30:0.0)
//       ),
//       child: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//         Container(
//         height: data.height * 0.240,
//           child: Stack(
//             children:[
//               Container(
//                 padding: EdgeInsets.only(
//                   top: 2,
//                   left: 5,
//
//                 ),
//                 height: data.height * 0.2,
//                 width: data.width,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: isDrawerOpen?BorderRadius.circular(30):BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     isDrawerOpen? IconButton(
//                       icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
//                       onPressed: () {
//                         setState(() {
//                           xOffset=0;
//                           yOffset=0;
//                           scaleFactor=1;
//                           isDrawerOpen=false;
//                         });
//                       },
//                     ) :IconButton(
//                       icon: Icon(Icons.menu,color: Colors.white,),
//                       onPressed: (){
//                         setState(() {
//                           xOffset=230;
//                           yOffset=150;
//                           scaleFactor = 0.6;
//                           isDrawerOpen = true;
//                         });
//
//                       },
//                     ),
//                     SizedBox(height: 8,),
//                     Text(
//                       '  Find Your',
//                       style: TextStyle(
//                           color: Colors.white,fontSize:20),),
//                     SizedBox(height: 5,),
//                     Text(' Project',style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 bottom: 0,
//                 left: 0,
//                 right: 0,
//                 child: Container(
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   height: 54,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         offset: Offset(0, 10),
//                         blurRadius: 50,
//                         color: Colors.black45,
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: TextField(
//                           onChanged: (value) {null;},
//                           decoration: InputDecoration(
//                             hintText: "Search",
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 16,
//                             ),
//                             enabledBorder: InputBorder.none,
//                             focusedBorder: InputBorder.none,
//                             suffixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//             SizedBox(height: data.height*0.01,),
//             Expanded(
//               child: Container(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: data.height*0.30,
//                         width: data.width -16,
//                         padding: EdgeInsets.all(9),
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Hero(
//                                   tag: "dsnscreen",
//                                   child: Text(
//                                     'Design Credit Course',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: data.height*0.02,),
//                             GestureDetector(
//                               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen() ));},
//                               child: Container(
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       'A student must complete Six design credits to meet the degree requirements.\n''\n'
//                                           'The student may choose a project form the 6 categories.\n ''\n''Students are required to complete'
//                                           '3 design courses of 2 credit each.',
//                                       style: TextStyle(fontSize: 15,color: Colors.white),
//                                     ),
//                                     Center(child: Text("Tap to know more",style: TextStyle(fontSize: 12,color: Colors.white70),),)
//                                   ],
//                                 ),
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: data.height*0.01,),
//                       Text(
//                         'Select Department',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(top: data.height*0.006),
//                         height: data.height*0.30,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//
//                           children: [
//                             DepartmentCard(image: 'assets/AI.jpg', name: 'Artificial Intelligence and Data Engineering', size: data),
//                             DepartmentCard(image: 'assets/BB1.jpg', name: 'Bioscience and BioEngineering', size: data),
//                             DepartmentCard(image: 'assets/BB2.jpg', name: 'Bioscience and BioEngineering', size: data),
//                             DepartmentCard(image: 'assets/CH.jpeg', name: 'Chemical Engineering', size: data),
//                             DepartmentCard(image: 'assets/EE.jpg', name: 'Electrical Engineering', size: data),
//                             DepartmentCard(image: 'assets/Phy.jpg', name: 'Physics', size: data),
//                             DepartmentCard(image: 'assets/ME.jpg', name: 'Mechanical Engineering', size: data),
//                           ],
//
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
