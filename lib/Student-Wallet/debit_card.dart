import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skido/Student-Wallet/otp.dart';
import 'package:skido/Student-Wallet/payment_options.dart'; // Import the services.dart package

class DebitCard extends StatefulWidget {
  @override
  _DebitCardState createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _expiryMonthController = TextEditingController();
  final TextEditingController _expiryYearController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  bool? rememberCard = false;
  bool _isTextFieldFocused = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF240046),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Add horizontal padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentOptions()),
                          );
                        },
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Wallet Recharge',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.0), // Add horizontal padding
                    child: RectangleWidget(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Align children to the start and end of the row
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Select option to add money',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '    ₹10,000+ ₹1800 (GST)',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(), // Add a spacer to push the amount to the right
                            Text(
                              '₹11,800',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Debit Card Number', // Text "Card Number"
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        RectangleWidget(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: TextField(
                              controller: _numberController,
                              keyboardType: TextInputType.number,
                              maxLength: 19,
                              style: TextStyle(color: Colors.white),
                              inputFormatters: [CustomInputFormatter()],
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cardholder's Name as on the Card",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        RectangleWidget(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: TextField(
                              controller: _textController,
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.white),
                              inputFormatters: [UpperCaseTextFormatter()],
                              decoration: InputDecoration(
                                hintText: '',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Expiry Date', // Changed label
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(), // Add space between "Expiry Date" and "CVV"
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 80.0), // Adjust left padding as needed
                              child: Text(
                                'CVV', // Changed label
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              width: 80.0, // Width for the expiry month field
                              height: 50.0, // Height for the expiry month field
                              child: RectangleWidget(
                                child: Padding(
                                  padding: EdgeInsets.all(2.5),
                                  child: TextField(
                                    controller: _expiryMonthController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 2,
                                    style: TextStyle(color: Colors.white),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      counterText: '',
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    10.0), // Add spacing between the input fields
                            Container(
                              width: 80.0, // Width for the expiry year field
                              height: 50.0, // Height for the expiry year field
                              child: RectangleWidget(
                                child: Padding(
                                  padding: EdgeInsets.all(2.5),
                                  child: TextField(
                                    controller: _expiryYearController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 4,
                                    style: TextStyle(color: Colors.white),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      counterText: '',
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    70.0), // Add spacing between the input fields and CVV
                            Container(
                              width: 100.0, // Width for the CVV field
                              height: 50.0, // Height for the CVV field
                              child: RectangleWidget(
                                child: Padding(
                                  padding: EdgeInsets.all(2.5),
                                  child: TextField(
                                    controller: _cvvController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 3,
                                    style: TextStyle(color: Colors.white),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      counterText: '',
                                      hintText: '',
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the background color when tapped
                          _isTextFieldFocused = !_isTextFieldFocused;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _isTextFieldFocused
                                  ? Colors.white
                                  : Color(0xFF492b65),
                              _isTextFieldFocused
                                  ? Colors.white
                                  : Color(0xFF240046),
                            ],
                          ),
                          border: Border.all(
                            color: Color(0xFFC0C0C0), // White outline color
                            width: 1, // Width of the outline
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
                                  0x80000000), // Vintage shade color with 50% opacity
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberCard,
                                  onChanged: (newValue) {
                                    setState(() {
                                      rememberCard = newValue!;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        // Color of the checkbox when checked
                                        return Colors.white;
                                      }
                                      // Default color of the checkbox
                                      return Color(0xFF240046);
                                    },
                                  ),
                                  checkColor: Colors
                                      .black, // Set the color of the tick symbol
                                ),
                                Text(
                                  'Remember this card for the next time.',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: _isTextFieldFocused
                                          ? Color(0xFF240046)
                                          : Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Text(
                                'We care a lot about your privacy. That\'s why we do not keep any of your information unless you ask for it.',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: _isTextFieldFocused
                                        ? Color(0xFF240046)
                                        : Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Positioned widget for the Credit Card option
                  Positioned(
                    top: 440, // Adjust the top position as needed
                    left: 20,
                    right: 20,
                    child: Stack(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: isSelected ? Colors.black : Colors.black,
                                width: 1.5), // Outline
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'images/vsa.jpg',
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                              SizedBox(width: 5),
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Credit Card',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 7, // Adjust position vertically as needed
                          right: 6, // Adjust position horizontally as needed
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        isSelected ? Colors.green : Colors.grey,
                                    width: 1.5), // Outline
                              ),
                              child: isSelected
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 20,
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Positioned widget for the UPI option
                  Positioned(
                    top: 440, // Adjust the top position as needed
                    left: 20,
                    right: 20,
                    child: Stack(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: isSelected ? Colors.black : Colors.black,
                                width: 1.5), // Outline
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'images/upi.png',
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                              SizedBox(width: 5),
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'UPI',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 7, // Adjust position vertically as needed
                          right: 6, // Adjust position horizontally as needed
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        isSelected ? Colors.green : Colors.grey,
                                    width: 1.5), // Outline
                              ),
                              child: isSelected
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.transparent,
                                      size: 20,
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: RectangleWidget(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OTP()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Proceed To Add Money',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600, // Added fontWeight
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
      width: double.infinity, // Expanded to full width
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

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > oldValue.text.length &&
        (newValue.text.length + 1) % 5 == 0) {
      final newText = '${newValue.text} ';
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
    return newValue;
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
