import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'my_profile.dart';

class EditHobbies extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<EditHobbies> {
  List<String> selectedOptions = [];
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF240046),
          title: Row(
            children: [
              Text(
                'Edit Hobbies',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white, size: 35),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfile()),
              );
              // Navigate back or perform any desired action
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF240046),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),

                    // Searchable Dropdown List
                    RectangleWidget(
                      child: SingleChildScrollView(
                        child: TypeAheadFormField<String?>(
                          textFieldConfiguration: TextFieldConfiguration(
                            style: TextStyle(
                              color: Colors.white,
                            ), // Text color set to white
                            decoration: InputDecoration(
                              hintText: 'e.g: Coding',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                          suggestionsCallback: (pattern) {
                            return [
                              'Language Learning',
                              'Coding',
                              'DIY Projects',
                              'Educational Gaming',
                              'Science Experiments'
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
                          // Continue Button
                          SizedBox(
                            width: 400,
                            height: 50,
                            child: TextButton(
                              onPressed:
                                  selectedOptions.isNotEmpty ? () {} : null,
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Text(
                                'Submit',
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
                    SizedBox(height: 100)
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
