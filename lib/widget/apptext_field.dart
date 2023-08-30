import 'package:flutter/material.dart';
import 'package:petcare_app/attribute/Dimensions.dart';

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

    hasUserInput = widget.textEditingController.text.isNotEmpty;
    borderColor = hasUserInput ?const Color.fromARGB(255, 107, 76, 185) : Colors.grey;

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
      borderColor = hasUserInput ? const Color.fromARGB(255, 107, 76, 185) : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height60,
      margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height20),
      padding:  EdgeInsets.only(left: Dimensions.height30, right: Dimensions.height30),
      child: TextField(
        controller: widget.textEditingController,
        style: const TextStyle(color: Color.fromARGB(255, 107, 76, 185)), 
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: borderColor), 
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius16),
            borderSide: BorderSide(
              width: 1.0,
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius16),
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
