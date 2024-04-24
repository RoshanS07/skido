import 'package:flutter/material.dart';

class Profile {
  final String name;
  final String title;
  final String imageUrl;
  final String profileImageUrl;
  bool isFollowing;

  Profile(this.name, this.title, this.imageUrl, this.profileImageUrl,
      {this.isFollowing = false});
}

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.yellow),
          trackColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 36, 0, 70),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text(
                  'Follow Recommended Mentors',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: buildProfileList(),
                ),
                SizedBox(height: 1),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(36, 0, 70, 1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 40,
              right: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 1,
              child: Image.asset(
                'images/SKIDO Logo transparant 1-1.png',
                width: 81,
                height: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileList() {
    return Scrollbar(
      thickness: 6.0,
      radius: Radius.circular(3.0),
      controller: _scrollController,
      thumbVisibility: true,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: (profiles.length / 2).ceil(),
        itemBuilder: (context, index) {
          int startIndex = index * 2;
          int endIndex = startIndex + 2;
          if (endIndex > profiles.length) {
            endIndex = profiles.length;
          }
          List<Profile> pairProfiles = profiles.sublist(startIndex, endIndex);
          return Column(
            mainAxisSize: MainAxisSize
                .min, // Ensure that the Column size is determined by its children
            children: [
              Row(
                children: pairProfiles.map((profile) {
                  return Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: profileCard(profile, context),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 15), // Space between rows
            ],
          );
        },
      ),
    );
  }

  Widget profileCard(Profile profile, BuildContext context) {
    return Container(
      height: 210,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.31, 0.32],
          colors: [
            Color.fromRGBO(255, 255, 255, 0.67),
            Color.fromRGBO(255, 255, 255, 0.19),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.005),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                profile.name,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF240026)),
              ),
              SizedBox(height: 4.0),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profile.profileImageUrl),
                  radius: 40.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                profile.title,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 4.0),
              ElevatedButton(
                onPressed: () {
                  profile.isFollowing = !profile.isFollowing;
                  (context as Element).markNeedsBuild();
                },
                child: Text(
                  profile.isFollowing ? 'Unfollow' : 'Follow',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(00, 24, 00, 26)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: profile.isFollowing
                      ? Colors.red
                      : Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.45),
                    Color.fromRGBO(255, 255, 255, 0.55),
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Profile> profiles = [
  Profile(
      'John Doe',
      'Software Engineer',
      'https://th.bing.com/th/id/OIP.T35_pVEMZCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain'),
  Profile(
      'Jane Smith',
      'Designer',
      'https://th.bing.com/th/id/OIP.0iG7xinjnxYwduQCGJs1rQHaKX?w=202&h=282&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain'),
  Profile(
      'Mike Jones',
      'Marketing Manager',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain'),
  Profile(
      'Emily Brown',
      'Project Manager',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain'),
  Profile(
      'Chris Johnson',
      'UI/UX Designer',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPP7zusQAAAA?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain'),
  Profile(
      'Sarah Wilson',
      'Software Developer',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain'),
  Profile(
      'David Clark',
      'Product Manager',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.T35_pVEMZyCa6iPPp7zusQAAAA?rs=1&pid=ImgDetMain'),
  Profile(
      'Linda Martinez',
      'Data Analyst',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.-d8GY5axNJZYoXsNOUJ4iwAAAA?w=432&h=432&rs=1&pid=ImgDetMain'),
];
