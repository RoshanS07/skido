import 'package:flutter/material.dart';

void main() {
  runApp(WalletHistory());
}

class WalletHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Page',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _currentPage = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF240046),
      appBar: AppBar(
        backgroundColor: Color(0xFF240046),
        title: Row(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/SKIDO Logo transparant 1-1.png',
                  height: 35,
                  width: 81,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 1, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 50,
                    child: IconButton(
                      onPressed: () {
                        // Handle menu icon pressed
                      },
                      icon: Icon(Icons.menu, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Text(
                      '  Welcome, Rohan',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 70),
                  SizedBox(
                    width: 50,
                    child: IconButton(
                      onPressed: () {
                        // Handle notification icon pressed
                      },
                      icon: Icon(Icons.notifications, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 0),
                  SizedBox(
                    width: 50,
                    child: IconButton(
                      onPressed: () {
                        // Handle wallet icon pressed
                      },
                      icon: Icon(Icons.account_balance_wallet_outlined,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF492b65),
                                  Color(0xFF240046),
                                ],
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x80000000),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF492b65),
                                Color(0xFF240046),
                              ],
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x80000000),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 45,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                elevation: 4,
                                backgroundColor: Colors.transparent,
                              ),
                              child: Icon(Icons.format_list_bulleted_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildContainer(0),
                  _buildContainer(1),
                  _buildContainer(2),
                  _buildContainer(3),
                  _buildContainer(4),
                  _buildContainer(5),
                  // Add more containers here if needed
                ],
              ),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(13, (int index) {
                return Container(
                  width: 26.0,
                  height: 3.0,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? Colors.yellowAccent
                        : Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            Text(
              'Our Top Rated Mentors',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Container(
              height: 135,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF492b65),
                    Color(0xFF240046),
                  ],
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x80000000),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 1),
                      _buildMentorProfile('assets/profile1.png'),
                      SizedBox(height: 1),
                      SizedBox(width: 20), // Add space between images
                      _buildMentorProfile('assets/profile2.png'),
                      SizedBox(height: 1),
                      SizedBox(width: 20), // Add space between images
                      _buildMentorProfile('assets/profile3.png'),
                      SizedBox(width: 20), // Add space between images
                      SizedBox(height: 1),
                      _buildMentorProfile('assets/profile4.png'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding:
                  EdgeInsets.only(top: 10), // Padding added to the Container
              width: 600,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                color: Colors.white, // Set container background color to white
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20), // Padding to start scrolling from left
                    _buildTextWidget("Recommended", 0),
                    SizedBox(width: 50),
                    _buildTextWidget("Live Mentors ", 1),
                    SizedBox(width: 50),
                    _buildTextWidget("Followed Mentors", 2),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildRecommendedProfile(profiles[0]),
                  SizedBox(width: 20), // Add space between profiles
                  _buildRecommendedProfile(profiles[1]),
                  SizedBox(width: 20), // Add space between profiles
                  _buildRecommendedProfile(profiles[2]),
                  // Add more profiles here if needed
                ],
              ),
            ),

            SizedBox(height: 20), // Add space between mentors and new container
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Latest Blogs ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                    width: 170), // Add space between mentors and new container

                Text(
                  'view all ',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                SizedBox(
                  width: 23,
                  child: IconButton(
                    onPressed: () {
                      // Handle menu icon pressed
                    },
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ],
            ),

            // New container below the "Latest Blogs" row
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF492b65), Color(0xFF240046)],
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Learn with HTML and CSS',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          'Web Development',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(height: 1),
                        // Add space between mentors and new container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Read ',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            SizedBox(
                              width: 23,
                              child: IconButton(
                                onPressed: () {
                                  // Handle menu icon pressed
                                },
                                icon: Icon(Icons.arrow_circle_right_outlined,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              "2 day's ago",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFFA7A7A7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0), //New container below the "Latest Blogs" row
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF492b65), Color(0xFF240046)],
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Learn with HTML and CSS',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          'Web Development',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(height: 1),
                        // Add space between mentors and new container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Read ',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            SizedBox(
                              width: 23,
                              child: IconButton(
                                onPressed: () {
                                  // Handle menu icon pressed
                                },
                                icon: Icon(Icons.arrow_circle_right_outlined,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              "2 day's ago",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFFA7A7A7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          setState(() {
            _currentPage = index;
          });
        },
        child: Container(
          width: 363,
          height: 261,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF492b65),
                Color(0xFF240046),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 27),
              Container(
                width: 330,
                height: 160,
                color: Colors.white60,
                child: Center(),
              ),
              SizedBox(width: 11),
              Text(
                '  Short description regarding the community \n  that will help student to understand about it',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMentorProfile(String imagePath) {
    return Column(
      children: [
        SizedBox(height: 0),
        Stack(
          children: [
            Container(
              width: 79,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x80000000),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Transform.rotate(
                angle: -20 * 3.1415926535 / 180,
                child: Container(
                  width: 53,
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // Add space between image and name container
        Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFF492b65),
              ],
            ),
            border: Border(
              top: BorderSide(color: Colors.white, width: 1),
              left: BorderSide(color: Colors.white, width: 1),
              right: BorderSide(color: Colors.white, width: 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              '    Name',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendedProfile(Profile profile) {
    return Container(
      width: 200,
      height: 265,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.39, 0.32],
          colors: [
            Color.fromRGBO(255, 255, 255, 0.67),
            Color.fromRGBO(255, 255, 255, 0.19),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.005),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            profile.name1,
            style: TextStyle(fontSize: 18, color: Color(0xFF240046)),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(profile.imageUrl),
            radius: 50.0,
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            profile.name,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          Text(
            profile.title,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 10), // Add space between ElevatedButton and icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    profile.isFollowing = !profile.isFollowing;
                  });
                },
                child: Text(
                  profile.isFollowing ? 'UnFollow' : 'Follow',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(120, 40), // Set width and height for the button
                  backgroundColor:
                      profile.isFollowing ? Colors.yellow : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              Icon(
                Icons.bookmark,
                color: Colors.white,
                size: 47,
              ), // Tag icon
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextWidget(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: _selectedIndex == index ? Color(0XFF181818) : Colors.black,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 2,
            width: 90, // Adjust the width of the bottom line
            color: _selectedIndex == index
                ? Color(0xFF8A3ED1)
                : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              // Handle icon pressed
            },
            icon: Icon(Icons.home_filled),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Handle icon pressed
            },
            icon: Icon(Icons.share_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Handle icon pressed
            },
            icon: Icon(Icons.stadium_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Handle icon pressed
            },
            icon: Icon(Icons.messenger_outline_rounded),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              // Handle icon pressed
            },
            icon: Icon(Icons.perm_contact_calendar_sharp),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class Profile {
  final String name1;
  final String name;
  final String title;
  final String imageUrl;
  bool isFollowing;

  Profile(this.name1, this.name, this.title, this.imageUrl,
      {this.isFollowing = false});
}

List<Profile> profiles = [
  Profile(
    'Puranashis Chawala',
    'UI / UX  |  Motion design',
    'Minutes mentored : 6,708',
    'https://th.bing.com/th/id/OIP.0iG7xinjnxYwduQCGJs1rQHaKX?w=202&h=282&c=7&r=0&o=5&dpr=1.5&pid=1.7',
  ),
  Profile(
    'Jane Smith',
    'UI / UX  |  Motion design',
    'Designer',
    'https://th.bing.com/th/id/OIP.0iG7xinjnxYwduQCGJs1rQHaKX?w=202&h=282&c=7&r=0&o=5&dpr=1.5&pid=1.7',
  ),
  Profile(
    'Mike Jones',
    'UI / UX  |  Motion design',
    'Marketing Manager',
    'https://th.bing.com/th/id/OIP.0iG7xinjnxYwduQCGJs1rQHaKX?w=202&h=282&c=7&r=0&o=5&dpr=1.5&pid=1.7', // Placeholder URL
  ),
];
