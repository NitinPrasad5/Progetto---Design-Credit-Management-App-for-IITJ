import 'package:flutter/material.dart';
import 'package:progetto/Screens/about.dart';
import 'package:progetto/Screens/homepage.dart';
import 'package:progetto/Screens/project_screen.dart';
import 'package:progetto/screens/contacts.dart';

class DepartmentCard extends StatelessWidget {
  final String image;
  final String name;
  final Size size;
  const DepartmentCard({Key? key,required this.image,required this.name,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectScreen(name: name, size: size,)));},
      child: Container(
        height: size.height*0.30,
        width: size.width*0.38,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1,0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 7.0,bottom: 10),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),

              ),
            ),
          ),
        ),

      ),
    );
  }
}

// class Header extends StatelessWidget {
//   final Size size;
//   const Header({Key? key,required this.size}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(
//         top: 15,
//         left: 15,
//         right: 10,
//       ),
//       height: size.height * 0.2,
//       width: size.width,
//       decoration: const BoxDecoration(
//         color: Colors.black,
//         borderRadius:  BorderRadius.only(
//           bottomLeft: Radius.circular(30),
//           bottomRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: const [
//           // IconButton(
//           //     icon:Icon(Icons.menu,color: Colors.white,),
//           //     onPressed: null,
//           // ),
//           SizedBox(height: 15,),
//           Text(
//             'Find Your',
//             style: TextStyle(
//                 color: Colors.white,fontSize:20),),
//           SizedBox(height: 5,),
//           Text('Project',style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
//         ],
//       ),
//     );
//   }
// }


class NavigationDrawer extends StatelessWidget {
  final Size size;

  const NavigationDrawer({Key? key, required this.size}) : super(key: key);
  @override

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:  const Color.fromRGBO(231, 217, 234, 1),
      elevation: 10,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context,size),
            buildMenuItems(context,size),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context, Size size) => Container(
  padding: EdgeInsets.only(
    top: size.height*0.1,
    left: MediaQuery.of(context).padding.left + 30,
    // bottom: MediaQuery.of(context).padding.top,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Text(
        'Progetto',
        style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),
      ),
      Text(
        'Find your Project',
        style: TextStyle(color: Colors.black,fontSize: 15,),
      ),

    ],
  ),
);

Widget buildMenuItems(BuildContext context,Size size) => Container(
  padding: const EdgeInsets.all(15),
  child:   Wrap(
      runSpacing: 10,
      children:[
        const Divider(color: Colors.black,),

        ListTile(
          leading: const Icon(Icons.home,color: Colors.black),
          title: const Text('Home',),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.mail,color: Colors.black),
          title: const Text('Contact Us',),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactScreen(),),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_outlined,color: Colors.black),
          title: const Text('About Developer',),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen(),),
            );
          },
        ),
        // SizedBox(
        //   height: size.height*0.40,
        // ),
        const Divider(color: Colors.black,),

        // ListTile(
        //   leading: const Icon(Icons.logout,color: Colors.black),
        //   title: const Text('Log Out'),
        //   onTap: ()async{
        //     await FirebaseAuth.instance.signOut();
        //     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const AuthGate(),), (route) => false);
        //
        //   },
        // ),
      ]
  ),
);
