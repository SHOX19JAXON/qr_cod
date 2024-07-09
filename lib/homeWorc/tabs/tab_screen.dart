import 'package:flutter/material.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/history.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/open_file_screen.dart';
import 'package:qr_cod_bloc/homeWorc/secreen/show_rq.dart';
import '../../utils/colors/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/images/app_images.dart';
class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> _screens = [];
  int _activeIndex = 0;

  // List<Widget> screens = [
  //   History(),
  //   ShowQR(),
  //   OpenFile()
  // ];

  @override
  void initState() {
    _screens = [History(), ShowQR(), OpenFile()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button pressed!');
        },
        child: SvgPicture.asset(AppImages.qr_scaner),
        backgroundColor: AppColors.c_FDB623,
        tooltip: 'Add',
      ),
      body: _screens[_activeIndex],
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: AppColors.c_FDB623,
        unselectedItemColor:Colors.white,

        onTap: (newActiveIndex) {
          _activeIndex = newActiveIndex;
          setState(() {});
        },

        currentIndex: _activeIndex,
        items:  [
          BottomNavigationBarItem(
              icon:
              SvgPicture.asset(AppImages.qr,),
              label: "Generate Code",
              activeIcon:   SvgPicture.asset(AppImages.qr,),
              // SvgPicture.asset(AppImages.home,color: Colors.black,)
              ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.white.withOpacity(0.5),
            ),
            label: "History",

            // backgroundColor : AppColors.white,

            activeIcon: Icon(
              Icons.history,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
