import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '60%_page.dart';

class FiftyPercent extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FiftyPercent> {
  List<String> selectedOptions = [];
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF240046),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 7,
                right: 7,
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
                top: 10,
                left: 10,
                child: Image.asset(
                  'images/SKIDO Logo transparant 1-1.png',
                  width: 81,
                  height: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Text(
                        'Discover your passions, select your communities from the list, and I\'ll customize your learning journey to match your interests.',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                        maxLines: 4,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(height: 20.0),

                    // Searchable Dropdown List
                    RectangleWidget(
                      child: SingleChildScrollView(
                        child: TypeAheadFormField<String?>(
                          textFieldConfiguration: TextFieldConfiguration(
                            style: TextStyle(
                              color: Colors.white,
                            ), // Text color set to white
                            decoration: InputDecoration(
                              hintText: 'e.g: Computer Science',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                          suggestionsCallback: (pattern) {
                            return [
                              'Data Science',
                              'Data Analysis',
                              'Data Cloud',
                              'Data Architect',
                              'Data Visualization'
                            ].where((option) => option
                                .toLowerCase()
                                .contains(pattern.toLowerCase()));
                          },
                          itemBuilder: (context, suggestion) {
                            return ListTile(
                              title: Text(
                                suggestion!,
                                style: TextStyle(
                                  color: Colors.white,
                                ), // Set text color to white
                              ),
                            );
                          },
                          onSuggestionSelected: (suggestion) {
                            setState(() {
                              dropdownValue = suggestion;
                              selectedOptions.add(suggestion!);
                            });
                          },
                          suggestionsBoxDecoration: SuggestionsBoxDecoration(
                            color: Color(0xFF53366E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),

                    // Selected Options Row
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Wrap(
                        spacing: 10.0,
                        children: selectedOptions.map((option) {
                          return CustomChip(
                            label: Text(
                              option,
                              style: TextStyle(color: Colors.white),
                            ),
                            onDeleted: () {
                              setState(() {
                                selectedOptions.remove(option);
                              });
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 20.0),

                    // Yellow Status Bar with Progress and Percentage
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                    ),
                                    FractionallySizedBox(
                                      widthFactor: 0.5,
                                      child: Container(
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color(0xFFF5B759),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '50%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),

                          // Continue Button
                          SizedBox(
                            width: 350,
                            height: 50,
                            child: TextButton(
                              onPressed: selectedOptions.isNotEmpty
                                  ? () {
                                      if (selectedOptions.isNotEmpty) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                SixtyPercent(),
                                          ),
                                        );
                                      }
                                    }
                                  : null,
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  color: Color(0xFF240046),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final Widget label;
  final VoidCallback? onDeleted;

  const CustomChip({
    required this.label,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: DefaultTextStyle.merge(
        style: TextStyle(color: Colors.white, fontSize: 18),
        child: label,
      ),
      deleteIcon: Icon(
        Icons.close,
        color: Colors.white,
        size: 15.0,
      ),
      onDeleted: onDeleted,
      backgroundColor: Color(0xFF53366E), // Set background color for Chip
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          // Set border color
          color: Color(0xFFC0C0C0), // White outline color
          width: 1, // Width of the outline
        ),
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  final Widget child;

  const RectangleWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF492b65),
            Color(0xFF240046),
          ],
        ),
        border: Border.all(
          color: Color(0xFFC0C0C0), // White outline color
          width: 1, // Width of the outline
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x80000000), // Vintage shade color with 50% opacity
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: child,
    );
  }
}
