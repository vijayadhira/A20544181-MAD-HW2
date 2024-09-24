import 'package:cs442_mp2/EducationList.dart';
import 'package:cs442_mp2/ProjectList.dart';
import 'package:cs442_mp2/util/constant.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.04), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    ConstantData.userInfo.profile,
                    
                    height: size.height * 0.2, 
                    width: size.width * 0.3, 
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${ConstantData.userInfo.name} ", style: TextStyle(fontSize: size.height * 0.025)), 
                      Text("${ConstantData.userInfo.company}r ", style: TextStyle(fontSize: size.height * 0.02)),
                      Text("${ConstantData.userInfo.position}", style: TextStyle(fontSize: size.height * 0.02)),
                        Text("${ConstantData.userInfo.company}", style: TextStyle(fontSize: size.height * 0.02)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 4,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(size.width * 0.04), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(Icons.phone, "${ConstantData.userInfo.phone}", size),
                      const SizedBox(height: 8),
                      _buildInfoRow(Icons.email, "${ConstantData.userInfo.email}", size),
                      const SizedBox(height: 8),
                      _buildAddressRow(Icons.home, size),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text("Education", style: TextStyle(fontSize: size.height * 0.025)),
              const SizedBox(height: 8),
              EducationList(educationList: ConstantData.educationList),
              const SizedBox(height: 16),
              Text("Projects", style: TextStyle(fontSize: size.height * 0.025)),
              const SizedBox(height: 8),
              Container(
                height: size.height * 0.4, 
                child: ProjectGrid(projectList: ConstantData.projects,),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildInfoRow(IconData icon, String text, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: size.height * 0.03),
        const SizedBox(width: 8),
        Text(text, style: TextStyle(fontSize: size.height * 0.02)),
      ],
    );
  }

  
  Widget _buildAddressRow(IconData icon, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: size.height * 0.03),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${ConstantData.userInfo.address1}", style: TextStyle(fontSize: size.height * 0.02)),
            Text("${ConstantData.userInfo.address2}", style: TextStyle(fontSize: size.height * 0.02)),
          ],
        ),
      ],
    );
  }
}
