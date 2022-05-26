//* Package Imports
import 'package:flutter/material.dart';
//* Package Imports
import 'tabs/nowshowing.dart';
import 'tabs/upcoming.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);
  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        shadowColor: Colors.black26,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset("lib/assets/images/cineaddis.png"),
        ),
        leadingWidth: 200,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: currentWidth,
        height: currentHeight,
        child: Column(
          children: [
            //* Tabs of Now showing and Upcoming
            Container(
              width: currentWidth,
              height: 40,
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey.shade100, width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TabBar(
                  controller: _tabController,
                  labelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.play_circle_filled),
                          Text("Now showing")
                        ],
                      ),
                    ),
                    const Tab(
                      text: "Upcoming",
                    ),
                  ],
                ),
              ),
            ),

            //* Tab bar views
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [NowShowing(), Upcoming()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
