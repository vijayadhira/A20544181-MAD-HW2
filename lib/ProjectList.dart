import 'package:cs442_mp2/Model/ProjectInfo.dart';
import 'package:flutter/material.dart';

class ProjectGrid extends StatelessWidget {
  final List<ProjectInfo> projectList;
  
  const ProjectGrid({Key? key, required this.projectList}) : super(key: key); 

 

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          childAspectRatio: 1, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10,
        ),
        itemCount: projectList.length,
        itemBuilder: (context, index) {
          return GridTile(
            child: Container(
              height: 150, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(projectList[index].imagePath),
                  fit: BoxFit.cover, 
                ),
              ),
              child: Stack(
                children: [
                
                  Positioned(
                    bottom: 10, 
                    left: 10,
                    child: Container(
                      color: Colors.black54, 
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        projectList[index].title,
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

