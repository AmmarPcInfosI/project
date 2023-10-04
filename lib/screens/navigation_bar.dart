import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation?.addListener(() {
      final value = tabController.animation!.value.round();
      if (value != currentPage && mounted) {
        changePage(value);
      }
    });
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: BottomBar(
          clip: Clip.none,
          fit: StackFit.expand,
          icon: (width, height) => Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: Colors.white, 
                size: width,
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(20),
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 346 / 390,
          barColor: const Color(0xFF89875B),
          start: 2,
          end: 0,
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 30,
          iconWidth: 30,
          reverse: false,
          hideOnScroll: true,
          scrollOpposite: false,
          onBottomBarHidden: () {},
          onBottomBarShown: () {},
          body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              5,
              (index) => const Center(child: Text('Nizwa')), // Replace with your actual conten
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              TabBar(
                indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                controller: tabController,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: Colors.white, // Set the color to white
                      width: 4,
                    ),
                    insets: const EdgeInsets.fromLTRB(16, 0, 16, 8)),
                tabs: [
                  _buildTabIcon(Icons.person_sharp),
                  _buildTabIcon(Icons.calendar_month_sharp),
                  _buildTabIcon(Icons.add),
                  _buildTabIcon(Icons.location_on_sharp),
                  _buildTabIcon(Icons.home_sharp),
                ],
              ),
              Positioned(
                top: -10,
                width: 75,
                height: 75,
                child: FloatingActionButton(
                  backgroundColor: const Color(0xFF6C6A48),
                  onPressed: () {},
                  heroTag: null,
                  mini: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.camera_alt_sharp,size: 37,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabIcon(IconData icon) {
    return SizedBox(
      height:55,
      width: 48.2,
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
           size: 30,// Set the color to white
        ),
      ),
    );
  }
}
