import 'package:flutter/material.dart';
import 'package:kulinerku_restaurant/features/profile/ui/profile_page.dart';
import '../supliers/ui/supliers_page.dart';
import 'widgets/custom_buttom_navigationBar.dart';
import 'widgets/custom_home_appbar.dart';
import 'screens/home_screen.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  final List<Widget> screens= const[
  HomePage(),
  SupliersPage(),
  ProfilePage(),
];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      
        screens[currentindex],
   
      Align(
          alignment: Alignment.bottomCenter,
          child: CustomButtomNavigationBar(
            myCurrentIndex: currentindex,
            onTap: (index) {
              setState(() {
                currentindex = index;
              });
            },
          )),
    ]);
  }
}
