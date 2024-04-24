// This widget is the root of your application.
import 'last_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SixtyPercentTwo extends StatelessWidget {
  const SixtyPercentTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF240046),
            body: SafeArea(
                top: true,
                child: Container(
                    width: 491,
                    height: 807,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Column(mainAxisSize: MainAxisSize.max, children: [
                      Container(
                        width: 140,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF240046),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: Image.asset(
                              'images/SKIDO Logo transparant 1-1.png',
                              width: 95,
                              height: 45,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment(0, 0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Container(
                          width: 279,
                          height: 247,
                          decoration: BoxDecoration(
                            color: Color(0xFF240046),
                          ),
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Container(
                                                width: 200,
                                                height: 200,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/256/600',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, -0.02),
                                              child: CircularPercentIndicator(
                                                radius: 105.5,
                                                percent: 0.6,
                                                lineWidth: 10,
                                                progressColor:
                                                    const Color(0xFFF5B759),
                                                backgroundColor:
                                                    Color(0xFF240046),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.56, 0.83),
                                child: Icon(
                                  Icons.star,
                                  color: Color(0xFFF5B759),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Text(
                          '60%',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Awesome! Your profile is 60% done.\n  Head to the profile tab to add the\n   finishing touches. Optimize your\n                         journey!',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LastPage(),
                                ),
                              );
                            },
                            child: Text("Let's begin➞"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(350, 50),
                                textStyle: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF240046),
                                )),
                          ))
                    ])))));
  }
}
