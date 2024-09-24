import 'package:cs442_mp2/Model/Education.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  final List<Education> educationList;

  const EducationList({Key? key, required this.educationList}) : super(key: key); 



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25, 
      child: ListView.builder(
        itemCount: educationList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
  contentPadding: const EdgeInsets.all(10),
  leading: Image.asset(
    educationList[index].imagePath,
    width: 50,
    height: 50,
    fit: BoxFit.cover,
  ),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
    children: [
      Text(educationList[index].schoolName),
      Text(educationList[index].gpa, style: TextStyle(color: Colors.grey)), 
    ],
  ),
)
,
          );
        },
      ),
    );
  }
}

