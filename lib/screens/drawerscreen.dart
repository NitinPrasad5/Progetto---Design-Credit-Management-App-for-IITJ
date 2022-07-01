import 'package:flutter/material.dart';
import 'package:progetto/screens/about.dart';
import 'package:progetto/screens/contacts.dart';


class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(17, 92, 62, 5),
      padding: EdgeInsets.only(top:50,bottom: 70,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Progetto',
                style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
              ),
              Text(
                'Find your Project',
                style: TextStyle(color: Colors.white,fontSize: 15,),
              ),
            ],
          ),
          Column(
            children: [

              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.home,color: Colors.white,size: 37,),
                  SizedBox(width: 14,),
                  Text('Home',style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.favorite,color: Colors.white,size: 37,),
                  SizedBox(width: 14,),
                  Text('Favourite',style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
              SizedBox(height: 20,),


              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen() ));},
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.mail,color: Colors.white,size: 37,),
                    SizedBox(width: 14,),
                    Hero(tag: "contact",child: Text('Contact us',style: TextStyle(color: Colors.white,fontSize: 23),))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen() ));},
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.perm_identity,color: Colors.white,size: 37,),
                    SizedBox(width: 14,),
                    Hero(tag:"about",child:Text('About us',style: TextStyle(color: Colors.white,fontSize: 23),))
                  ],
                ),
              ),
            ],

          ),



          Row(
            children: [
              Icon(Icons.settings,color: Colors.white,),
              SizedBox(width: 10,),
              Text('Settings',style:TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
              SizedBox(width: 15,),
              Container(width: 2,height: 20,color: Colors.white,),
              SizedBox(width: 15,),
              Icon(Icons.logout,color: Colors.white,),
              SizedBox(width: 10,),
              Text('Log out',style:TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)


            ],

          )


        ],
      ),

    );
  }
}
