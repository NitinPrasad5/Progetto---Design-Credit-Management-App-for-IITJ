import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size data = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
       leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios),),
        backgroundColor: Colors.black,
        title: const Text(
          'Design Credit Course',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
             // height: data.height*0.40,
              width: data.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: const [
                  Center(child: Text("General Guidelines",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500)),),
                  SizedBox(height: 11,),
                  Text(
                    'A student have to complete 6 design credits to meet the degree requirements\n''\n'
                        'Starting from the second academic year of the b.tech curriculum a student must complete 2 design credits every year.\n ''\n'
                        'Design credit may continue post summer vacation during the semester and also for the entire academic year, for this the student will be awarded X grade and will be required to register for the same course in the immediate semester',
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              //height: data.height*0.68,
              width: data.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: const [
                  Center(child: Text("Process of earning Design Credits ",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500)),),
                  SizedBox(height: 11,),
                  Text(
                    'To earn design credit, the student have to register under the following categories:\n''\n'
                        '1.Co-curricular projects such as Robocon, SAE-mini-Baja, etc., as a part of the Board of Co curricular activities of ACAC..\n '
                        '\n'' 2. Internships with Academia/ Industry/ R&D organisations.\n''\n'
                    '3.Summer/Winter/Semester projects with Institute faculty within or outside the department\n''\n'
                        '4.Summer Research Projects with faculty members within or outside the department\n''\n'
                        '5.Specialised Elective Courses related to Design and Practical Experience\n''\n'
                        '6.Regular Courses with optional Design and Practical Experience Component\n'
                    ,
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.fromLTRB(10,10,10,0),
              //height: data.height*0.78,
              width: data.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [

                  Center(child: Text("Evaluation of the design credits",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500)),),
                  SizedBox(height: 11,),
                  Text(
                    'Department will form a committee consisting of all batch-wise coordinators of Design andPractical Experience. The Head of the Department will chair the committee\n''\n'
                        'The committee will follow the following guideline for credit assignment:\n '
                        '\n'"a) For Category. 1, the committee will decide satisfactory/unsatisfactory/continuation grades based on the presentation in consultation with the president Board of Co-curricular activities of ACAC."'\n''\n'
                        ' b) For Categories 2-4, the committee will decide satisfactory/unsatisfactory/continuation grades based on the presentation in consultation with the research/project/internship advisor.\n''\n'
                        'c) For Categories. 5-6, the committee will decide satisfactory/unsatisfactory/continuation grades based on the presentation in consultation with the course instructor. \n''\n'
                        'Department may conduct evaluations twice in May and November.\n'

                    ,
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
