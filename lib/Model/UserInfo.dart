import 'package:cs442_mp2/Model/Education.dart';
import 'package:cs442_mp2/Model/ProjectInfo.dart';
import 'package:flutter/material.dart';

class UserInfo {
  final String name;
  final String position;
  final String company;
  final String phone;
  final String email;
  final String address1;
  final String address2;
  final String profile;


  final List<Education> education;


  final List<ProjectInfo> projects;

  UserInfo({
    required this.name,
    required this.position,
    required this.company,
    required this.phone,
    required this.email,
    required this.address1,
    required this.address2,
    required this.profile,
    List<Education>? education,
    List<ProjectInfo>? projects,
  })  : education = education ?? [],
        projects = projects ?? [];

  
}
