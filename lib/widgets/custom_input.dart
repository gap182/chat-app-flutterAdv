import 'package:flutter/material.dart';


class CustomInput extends StatelessWidget {

  final IconData icon;
  final String placeholder;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    Key key, 
    @required this.icon, 
    @required this.placeholder, 
    @required this.textEditingController, 
    this.keyboardType = TextInputType.text,
    this.isPassword = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(top: 5, right: 20, bottom: 5, left: 5),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0, 5),
                  blurRadius: 5
                )
              ]
            ),
            child: TextField(
              controller: textEditingController,
              autocorrect: false,
              keyboardType: this.keyboardType,
              obscureText: isPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(this.icon),
                focusedBorder: InputBorder.none,
                // contentPadding: EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintText: placeholder
              ),
            ),
          );
          //TODO: crear botón
          // RaisedButton(onPressed: (){})
  }
}