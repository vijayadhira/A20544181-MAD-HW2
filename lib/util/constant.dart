import 'package:cs442_mp2/Model/Education.dart';
import 'package:cs442_mp2/Model/ProjectInfo.dart';
import 'package:cs442_mp2/Model/UserInfo.dart';

class ConstantData {
  static List<ProjectInfo> projects = [
     ProjectInfo('car resale prediction', 'assets/images/car_resale.png'),
     ProjectInfo('Ecommerce 2', 'assets/images/f2.jpeg'),
     ProjectInfo('Music', 'assets/images/f3.jpeg'),
    ProjectInfo('Education', 'assets/images/f4.jpeg'),
  ];


  static List<Education> educationList = [
    Education('River Hr.sec School', 'assets/images/e1.png', 'GPA: 3.8'),
    Education('SKR University', 'assets/images/e2.jpeg', 'GPA: 3.6'),
  ];
  static  UserInfo userInfo = UserInfo(
  name: 'Vijay Adhira',
  position: 'Product Manager',
  company: 'Tech Innovations Inc.',
  phone: '(555) 123-4567',
  email: 'vijay.adhira9@tech.com',
  address1: '1234 Innovation Way',
  address2: 'Suite 100, Silicon Valley, CA 94043',
  profile: 'assets/images/pro.png'

);


}
