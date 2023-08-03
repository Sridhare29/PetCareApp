import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;

  const AppTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  Color borderColor = Colors.grey;
  bool hasUserInput = false;

  @override
  void initState() {
    super.initState();

    // Set the initial state of hasUserInput based on the initial text value
    hasUserInput = widget.textEditingController.text.isNotEmpty;
    borderColor = hasUserInput ? Color.fromARGB(255, 107, 76, 185) : Colors.grey;

    widget.textEditingController.addListener(onInputChanged);
  }

  @override
  void dispose() {
    widget.textEditingController.removeListener(onInputChanged);
    super.dispose();
  }

  void onInputChanged() {
    setState(() {
      hasUserInput = widget.textEditingController.text.isNotEmpty;
      borderColor = hasUserInput ? Color.fromARGB(255, 107, 76, 185) : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 10, bottom: 20),
      padding: EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        controller: widget.textEditingController,
        style: TextStyle(color: Color.fromARGB(255, 107, 76, 185)), // Change the user input text color
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: borderColor), // Change the hint text color
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: 1.0,
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: 1.0,
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
