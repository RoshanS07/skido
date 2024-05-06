import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';
import 'package:skido/Student-Wallet/confirmation.dart';
import 'package:skido/Student-Wallet/payment_options.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Recharge',
      theme: ThemeData(
        primaryColor: Color(0xFF240046), // Background color
        scaffoldBackgroundColor: Color(0xFF240046), // Background color
      ),
      home: WalletRechargePage(),
    );
  }
}

class WalletRechargePage extends StatefulWidget {
  @override
  _WalletRechargePageState createState() => _WalletRechargePageState();
}

class _WalletRechargePageState extends State<WalletRechargePage> {
  bool otpEntered = false; // Variable to track if OTP is entered
  List<TextEditingController> controllers =
      List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentOptions()),
            );
          },
        ),
        title: Text(
          'Wallet Recharge',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Aligning the title to the left
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RectangleWidget1(
                    child: Container(
                      width: 370,
                      height: 88,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select option to add money',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        5), // Reduced space between the two rows
                                Text(
                                  '     ₹ 10,000 + ₹ 1800 (GST)',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₹ 11,800',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    gradientColors: [
                      Color(0xFF857198),
                      Color(0xFF240046),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        Text(
                          'Authenticate Payment',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Please enter one time password (OTP) sent on your registered mobile number',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            6,
                            (index) => Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Container(
                                width: 55,
                                height: 54,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(255, 255, 255, 0.18),
                                      Color.fromRGBO(255, 255, 255, 0),
                                    ],
                                  ),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.5),
                                    // Faded color effect
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: TextField(
                                    controller: controllers[index],
                                    keyboardType: TextInputType.number,
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (String value) {
                                      if (value.isNotEmpty) {
                                        if (index < 5) {
                                          FocusScope.of(context)
                                              .nextFocus(); // Move to next TextField
                                        } else {
                                          // Last TextField, check OTP entered
                                          setState(() {
                                            otpEntered = true;
                                          });
                                        }
                                      } else {
                                        if (index > 0) {
                                          FocusScope.of(context)
                                              .previousFocus(); // Move to previous TextField
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Didn\'t receive the OTP?',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Add function to resend OTP
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  'Resend OTP',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MouseRegion(
            cursor: otpEntered
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            child: GestureDetector(
              onTap: otpEntered
                  ? () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Payment Confirmation"),
                            content: Text(
                                "Are you sure you want to confirm payment?"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  // Perform any additional actions if needed
                                },
                                child: Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Add function to confirm payment
                                  // Then close the dialog
                                  Navigator.of(context).pop();
                                  // Generate and show the fullscreen overlay
                                  showFullScreenOverlay(context);
                                },
                                child: Text("Confirm"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  : null,
              child: Container(
                width: 180, // Adjusted width
                padding: EdgeInsets.symmetric(
                    vertical: 15, horizontal: 20), // Added horizontal padding
                margin: EdgeInsets.symmetric(
                    horizontal: 20), // Added margin for spacing
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: otpEntered ? Colors.white : Colors.grey,
                  // Change color based on OTP entered
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Increase text size
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class RectangleWidget1 extends StatelessWidget {
  final Widget child;
  final List<Color> gradientColors;

  const RectangleWidget1(
      {Key? key, required this.child, required this.gradientColors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
        border: Border.all(
          color: Color(0xFFC0C0C0),
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
      child: child,
    );
  }
}

class RippleAnimation extends StatefulWidget {
  @override
  _RippleAnimationState createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _timerCompleted = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _timerCompleted = true;
          });
        }
      });

    _controller.forward();
    // Start the timer
    Timer(Duration(seconds: 2), () {
      if (!_timerCompleted) {
        setState(() {
          _timerCompleted = true;
        });
        // Navigate to another page
      }
    });
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Confirmation()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 70 * _animation.value,
              height: 70 * _animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightGreen
                    .withOpacity(0.5), // Light green background color
                border: Border.all(color: Colors.green, width: 3),
              ),
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 5),
              ),
              child: _timerCompleted
                  ? Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 50,
                    )
                  : SizedBox(),
            ),
          ],
        );
      },
    );
  }
}

void showFullScreenOverlay(BuildContext context) {
  Navigator.of(context).push(
    PageRouteBuilder(
      opaque: false,
      pageBuilder: (BuildContext context, _, __) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0.0, 1.0), // Start from bottom
              end: Offset.zero, // Slide to the top
            ).animate(CurvedAnimation(
              parent: ModalRoute.of(context)!.animation!,
              curve: Curves.easeInOut,
            )),
            child: Stack(
              children: [
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      color: Colors.white.withOpacity(0.1),
                      // Adjust opacity for shading effect
                    ),
                  ),
                ),
                Positioned(
                  bottom: -125,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.50,
                      // Adjust height as needed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50, bottom: 30),
                            // Adjust the bottom padding as needed
                            child: Text(
                              'Your payment is being processed',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          RippleAnimation(), // Add RippleAnimation here
                          SizedBox(height: 20),
                          // Increase space between circle and text
                          Text(
                            'Please wait for confirmation',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 2,
                            color: Colors.black, // Color of the line
                            margin: EdgeInsets.symmetric(vertical: 10),
                            // Adjust margin as needed
                          ),
                        ],
                      ),
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
